namespace go auth

struct DeliverTokenReq {
  1: i32 user_id
}

struct VerifyTokenReq {
  1: string token
}

struct DeliveryResp {
  1: string token
}

struct VerifyResp {
  1: bool res
}

service AuthService {
  string DeliverTokenByRPC(1: DeliverTokenReq req),
  VerifyResp VerifyTokenByRPC(1: VerifyTokenReq req)
}