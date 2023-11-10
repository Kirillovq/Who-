from fastapi import FastAPI
from sql_base import base_worker
from settings import BASE_PATH
from routers.client import client_router
from routers.ticket_list import ticket_list_router



base_worker.set_base_path(BASE_PATH)

if not base_worker.check_base():
    base_worker.create_base('../sql/base.sql')

app = FastAPI()


app.include_router(client_router, prefix='/client')
app.include_router(ticket_list_router, prefix='/ticket_list')
