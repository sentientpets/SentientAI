from typing import Iterable, Tuple, List

from qdrant_client import QdrantClient
from qdrant_client.models import PointStruct, VectorParams, Distance


class VectorStore:
    def __init__(self, url: str = "http://localhost:6333", collection: str = "memory", vector_size: int = 768):
        self.collection = collection
        self.client = QdrantClient(url)
        self.client.recreate_collection(
            collection_name=self.collection,
            vectors_config=VectorParams(size=vector_size, distance=Distance.COSINE),
        )

    def upsert(self, points: Iterable[Tuple[int, List[float], dict]]):
        qpoints = [PointStruct(id=p[0], vector=p[1], payload=p[2]) for p in points]
        self.client.upsert(collection_name=self.collection, points=qpoints)

    def search(self, vector: List[float], limit: int = 3):
        return self.client.search(collection_name=self.collection, query_vector=vector, limit=limit)
