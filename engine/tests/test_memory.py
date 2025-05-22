import numpy as np
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from engine.memory.model import Base, Person, Event, File
from engine.memory.vector_store import VectorStore


def setup_db():
    engine = create_engine('sqlite:///:memory:')
    Base.metadata.create_all(engine)
    return sessionmaker(bind=engine)()


def test_crud_roundtrip():
    session = setup_db()
    person = Person(name='Alice')
    session.add(person)
    session.commit()

    event = Event(description='hi', person_id=person.id)
    session.add(event)
    session.commit()

    file = File(path='doc.txt')
    session.add(file)
    session.commit()

    assert session.get(Person, person.id)
    assert session.get(Event, event.id)
    assert session.get(File, file.id)


def test_search_speed(benchmark):
    store = VectorStore()
    vec = [0.1] * 768
    store.upsert([(1, vec, {'text': 'hello'})])

    results = benchmark(lambda: store.search(vec))
    assert len(results) <= 3
    assert benchmark.stats.stats.get('max', 0) <= 0.05
