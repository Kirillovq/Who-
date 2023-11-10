from sql_base import base_worker
from sql_base import models

def get_ticket_list(ticket_list_id: int):
    return base_worker.insert_data("SELECT id,ticket_number,payment_number,session_data,session_time,hall_number,order_number,place_number"
    "  FROM ticket_list WHERE id =?", (ticket_list_id,))

def new_ticket_list(ticket_list: models) -> int:
    new_id = base_worker.insert_data("INSERT INTO ticket_list( id,ticket_number,payment_number,session_data,session_time,hall_number,order_number,place_number)"
                                 "VALUES (?, ?, ?, ?, ? ,? ,? ,?)"
                                 "RETURNING id",
                                 (ticket_list.id,ticket_list.ticket_number,ticket_list.payment_number,ticket_list.session_data, ticket_list.session_time,ticket_list.hall_number,ticket_list.order_number,ticket_list.place_number))
    return new_id

def delete_ticket_list(ticket_list_id: int):
    return base_worker.execute(query="DELETE FROM ticket_list WHERE id=? ",
                              args=(ticket_list_id,))