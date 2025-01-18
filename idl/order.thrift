namespace go order

include "cart.thrift"

struct Address {
  1: string street_address
  2: string city
  3: string state
  4: string country
  5: i32 zip_code
}

struct OrderItem {
  1: cart.CartItem item
  2: double cost
}

struct OrderResult {
  1: string order_id
}

struct PlaceOrderReq {
  1: i32 user_id
  2: string user_currency
  3: Address address
  4: string email
  5: list<OrderItem> order_items
}

struct PlaceOrderResp {
  1: OrderResult order
}

struct ListOrderReq {
  1: i32 user_id
}

struct Order {
  1: list<OrderItem> order_items
  2: string order_id
  3: i32 user_id
  4: string user_currency
  5: Address address
  6: string email
  7: i32 created_at
}

struct ListOrderResp {
  1: list<Order> orders
}

struct MarkOrderPaidReq {
  1: i32 user_id
  2: string order_id
}

struct MarkOrderPaidResp {}

service OrderService {
  PlaceOrderResp PlaceOrder(1: PlaceOrderReq req),
  ListOrderResp ListOrder(1: ListOrderReq req),
  MarkOrderPaidResp MarkOrderPaid(1: MarkOrderPaidReq req)
}