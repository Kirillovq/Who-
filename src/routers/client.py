from fastapi import APIRouter
from sql_base.models import client
import resolvers.client

staff_router = APIRouter()

@client_router.get("/")
def get_client():
    return f'Response:{{text:Страница со списком клиентов}}'

@client_router.post("/create")
def new_client(client: client):
    new_id = resolvers.client.new_client(client)
    return f"{{code: 201, id: {new_id}}}"

@client_router.delete("/delete/{client_id}")
def delete_client(client_id: int):
    return f'delete client {client_id}'