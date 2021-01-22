วิธีการเรียกใช้งาน api
1.api login
    GET    http://localhost/warehouse-management/api/login?username={username}&password={password}
2.api shop all
    GET http://localhost/warehouse-management/api/shop
3.api shop one
    GET http://localhost/warehouse-management/api/shop/shopID={shopID}
4.api branch all
    GET http://localhost/warehouse-management/api/branch?shopID={shopID}
5.api shop one
    GET http://localhost/warehouse-management/api/branch/branchID={branchID}&shopID={shopID}

