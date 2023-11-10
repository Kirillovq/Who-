from fastapi import APIRouter
from sql_base.models import ticket_list
import resolvers.ticket_list

ticket_list_router = APIRouter()

@ticket_list_router.get("/")
def get_ticket_list():
    return f'Response:{{text:Страница со списком билетов}}'

@ticket_list_router.post("/create")
def new_ticket_list(ticket_list: ticket_list):
    new_id = resolvers.ticket_list.new_ticket_list(ticket_list)
    return f"{{code: 201, id: {new_id}}}"

@ticket_list_router.delete("/delete/{ticket_list_id}")
def delete_ticket_list(ticket_list_id: int):
    return f'delete ticket_list {ticket_list_id}'