from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import postgresql

revision = '0001'
down_revision = None
branch_labels = None
depends_on = None

def upgrade():
    op.create_table(
        'person',
        sa.Column('id', postgresql.UUID(as_uuid=True), primary_key=True),
        sa.Column('created_at', sa.DateTime(), nullable=False, server_default=sa.func.now()),
        sa.Column('name', sa.String(), nullable=False),
    )
    op.create_table(
        'event',
        sa.Column('id', postgresql.UUID(as_uuid=True), primary_key=True),
        sa.Column('created_at', sa.DateTime(), nullable=False, server_default=sa.func.now()),
        sa.Column('description', sa.String(), nullable=False),
        sa.Column('person_id', postgresql.UUID(as_uuid=True), nullable=True),
    )
    op.create_table(
        'file',
        sa.Column('id', postgresql.UUID(as_uuid=True), primary_key=True),
        sa.Column('created_at', sa.DateTime(), nullable=False, server_default=sa.func.now()),
        sa.Column('path', sa.String(), nullable=False),
    )

def downgrade():
    op.drop_table('file')
    op.drop_table('event')
    op.drop_table('person')
