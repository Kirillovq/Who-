from datetime import datetime
from typing import Optional
from pydantic import BaseModel

class client(BaseModel):
    id: Optional[int]
    address: str
    phone_number: str
    surname: str
    ticket_list: str

class ticket_list(BaseModel):
    id: Optional[int]
    ticket_number: int
    payment_number: int
    session_data: Optional[datetime]
    session_time: Optional[datetime]
    hall_number: int
    order_number: int
    place_number: int
