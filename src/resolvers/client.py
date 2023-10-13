from sql_base import base_worker
from sql_base import models

def get_client(client_id: int):
    return base_worker.insert_data("SELECT id,address,phone_number,surname  FROM client WHERE id =?",
                               (client_id,))

def new_client(client: models) -> int:
    new_id = base_worker.insert_data("INSERT INTO client(id,address,phone_number,surname)"
                                 "VALUES (?, ?, ?, ?)"
                                 "RETURNING id",
                                 (client.id, client.address, client.phone_number, client.code_surname))
    return new_id

def delete_client(client_id: int):
    return base_worker.execute(query="DELETE FROM client WHERE id=? ",
                              args=(client_id,))