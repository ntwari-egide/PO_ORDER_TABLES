CREATE DATABASE PO_ORDER_DB;

USE PO_ORDER_DB;

CREATE TABLE A01_Logging(
    Log_ID BIGINT(19) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Log_Type NVARCHAR(400) NULL,
    Log_Category NVARCHAR(400) NULL,
    Log_User NVARCHAR(400) NULL,
    Log_Time TIMESTAMP(6) NULL,
    Log_Page TEXT NULL,
    Log_Call_From TEXT NULL,
    Log_Method_Name TEXT NULL,
    Log_Short_FilePath TEXT NULL,
    Log_FilePath_LineNumber TEXT NULL,
    Log_FilePath TEXT NULL,
    Log_Remarks TEXT NULL,
    Log_Execution_Start_Time TIMESTAMP NULL,
    Log_Execution_End_Time TIMESTAMP NULL,
    Log_Execution_Time_Spent TEXT NULL,
    Log_Message TEXT NULL,
    Log_Related_Developer TEXT NULL,
    Log_User_Host_Address NVARCHAR(20) NULL
);

DESC A01_Logging;

INSERT INTO A01_Logging
(
    Log_Type,
    Log_Category,
    Log_User,
    Log_Time,
    Log_Page,
    Log_Call_From,
    Log_Method_Name,
    Log_Short_FilePath,
    Log_FilePath_LineNumber,
    Log_FilePath,
    Log_Remarks,
    Log_Execution_Start_Time,
    Log_Execution_End_Time,
    Log_Execution_Time_Spent,
    Log_Message,
    Log_Related_Developer,
    Log_User_Host_Address
) VALUES 
(
    'Making changes',
     "System warning",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "Welcome dashboard",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Character encoding error",
    "Joe Doe",
    "localhost"
),
(
    'Updated order',
     "Success",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "Orders page",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Character encoding error",
    "Joe Doe",
    "localhost"
),
(
    'Created order',
     "Success",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "orders form",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Created order",
    "Joe Doe",
    "localhost"
),
(
    'No items found',
     "System warnings",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "dashboard",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Character encoding warning",
    "Joe Doe",
    "localhost"
),
(
    'Caching',
     "Error",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "Orders page",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Character encoding error",
    "Joe Doe",
    "localhost"
),
(
    'Created order',
     "Success",
     "John Doe",
    "2022-06-19 03:14:07",
    "page_1",
    "orders form",
     "callLog()",
    "/Downloads/PO Order/1label sample demo code/customer-data-microservice",
    "12",
    "app.js",
    "Please check the character encoding error in javascript",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "2022-06-19 03:14:07",
    "Created order",
    "Joe Doe",
    "localhost"
);


CREATE TABLE A01_Logging_Email_Queue(
    Logging_Email_ID int(4) AUTO_INCREMENT not null primary key,
    Logging_Email_To TEXT(16) NULL,
    Logging_Email_Content TEXT(16) NULL,
    Logging_Email_Status NVARCHAR(100) NULL,
    Logging_Email_Sent_Date DATETIME(6) NULL
);
INSERT INTO
    A01_Logging_Email_Queue(
        Logging_Email_To,
        Logging_Email_Content,
        Logging_Email_Status,
        Logging_Email_Sent_Date
    )
VALUES
    (
        "gersh@gmail.com",
        "Payment is done",
        "Active",
        NOW()
    ),
    (
        "kareem@gmail.com",
        "order delivered",
        "Active",
        "2021-07-13"
    ),
    (
        "mario@po.com",
        "Mario 83dh32k42h5ng2",
        "Not active",
        "2020-07-21"
    ),
    (
        "mautice@fw.com",
        "purchase request approved",
        "Active",
        "2020-05-21"
    ),
    (
        "dyba@yahoo.com",
        "order done",
        "Active",
        "2020-05-21"
    ),
    (
        "motinh@gmail.com",
        "email approved",
        "Not active",
        "2020-11-21"
    ),
    (
        "Marie@gmail.com",
        "",
        "Active",
        "2020-05-21"
    ),
    (
        "marvin@zoho.com",
        "order done",
        "Active",
        "2020-05-21"
    ),
    (
        "nickyashin@yahoo.com",
        "",
        "Active",
        "2021-05-30"
    ),
    (
        "daniel@aol.com",
        "Email is no longer allowed",
        "No active",
        "2020-05-21"
    );
CREATE TABLE AsosPoSizeRestoreOrder(
    BrandId NVARCHAR(100) NULL,
    OrderNo NVARCHAR(100) NULL,
    Num int(4) NULL,
    OrderKey NVARCHAR(100) NULL,
    EdiOrderNo NVARCHAR(100) NULL,
    Consolidated_ID NVARCHAR(100) NULL,
    size_matrix_type NVARCHAR(400) NULL,
    IsFindeEmail VARCHAR(1) NULL,
    IsFindePo VARCHAR(1) NULL,
    IsEmailFindePo VARCHAR(1) NULL,
    CreateTime date NULL
);
INSERT INTO
    AsosPoSizeRestoreOrder(
        BrandId,
        OrderNo,
        Num,
        OrderKey,
        EdiOrderNo,
        Consolidated_ID,
        size_matrix_type,
        IsFindeEmail,
        IsFindePo,
        IsEmailFindePo,
        CreateTime
    )
VALUES
    (
        "123",
        "10",
        4,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        NOW()
    ),
    (
        "283-047-383",
        "844-538-538",
        2,
        "9dj23k5g2",
        "030383",
        "037492",
        "94630",
        "T",
        "F",
        "F",
        "2020-02-21"
    ),
    (
        "948-939-132",
        "0373-484-32",
        5,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        "2021-07-25"
    ),
    (
        "238-423-472",
        "38932",
        4,
        "392hg3b4",
        "7847",
        "93648",
        "1384",
        "F",
        "F",
        "F",
        "2019-03-10"
    ),
    (
        "839-484-424",
        "387",
        3,
        "9ddb2n5b2",
        "098765",
        "123456",
        "6547289",
        "F",
        "T",
        "F",
        "2022-01-01"
    ),
    (
        "123-438-176",
        "273947",
        1,
        "435",
        "7645342",
        "53539",
        "036",
        "T",
        "T",
        "F",
        "2020-04-03"
    ),
    (
        "123",
        "10",
        4,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        '2019-03-30'
    ),
    (
        "933-937-986",
        "938764",
        4,
        "03834",
        "294",
        "9450",
        "3840",
        "T",
        "T",
        "T",
        NOW()
    ),
    (
        "123",
        "10",
        4,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        NOW()
    ),
    (
        "123",
        "10",
        4,
        "435",
        "7645342",
        "53539",
        "48876542",
        "T",
        "T",
        "F",
        NOW()
    );

CREATE TABLE AsosPoSizeRestoreOrderError(
    BrandId NVARCHAR(100) NOT NULL PRIMARY KEY,
    OrderNo NVARCHAR(100) NULL,
    Num INT(4) NULL,
    OrderDate DATETIME(6) NULL,
    ConfirmDate DATETIME(6) NULL,
    IsCopyOrder NVARCHAR(4) NULL,
    UserId NVARCHAR(100) NULL,
    UserPwd NVARCHAR(100) NULL,
    LocationCode NVARCHAR(100) NULL,
    EdiOrderNo NVARCHAR(100) NULL,
    IsFindeEmail VARCHAR(1) NULL,
    IsFindePo VARCHAR(1) NULL
);


DESC AsosPoSizeRestoreOrderError;

INSERT INTO AsosPoSizeRestoreOrderError
VALUES
(
    "22333",
    "4535943",
    5,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXW+HR8, Kigali",
    "3242343",
    "Y",
    "Y"
),
(
    "22345",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "22322",
    "4535943",
    3,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "245245",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "24523",
    "4535943",
    5,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXW+HR8, Kigali",
    "3242343",
    "Y",
    "Y"
),
(
    "245243",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "34533",
    "4535943",
    3,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "35345",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "34534",
    "4535943",
    5,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXW+HR8, Kigali",
    "3242343",
    "Y",
    "Y"
),
(
    "34523",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "53454",
    "4535943",
    3,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
),
(
    "6244",
    "4535943",
    34,
    "2022-06-19 03:14:07",
    "2022-06-19 09:14:07",
    "Y",
    "342934323",
    "award90234",
    "JJXX+HR8, Seattle",
    "3242343",
    "Y",
    "Y"
);


CREATE TABLE informationprompt(
    information INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    VersionNumber NVARCHAR(80) NOT NULL,
    Content NVARCHAR(400) NOT NULL,
    Creaperson NVARCHAR(40) NULL,
    CreateTime DATETIME(6) NULL
);

DESC informationprompt;

INSERT INTO informationprompt
(
    VersionNumber,
    Content,
    Creaperson,
    CreateTime
)

VALUES 
(
    "344353543",
    "Validate user",
    "823942",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Check login please!",
    "3424234",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Verify your email",
    "823942",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Check account code on email",
    "3424234",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "You need to select items, first",
    "3345354",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Validate user",
    "823942",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Check login please!",
    "3424234",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Verify your email",
    "823942",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "Check account code on email",
    "3424234",
    "2022-08-19 09:14:07"
),
(
    "344353543",
    "You need to select items, first",
    "3345354",
    "2022-08-19 09:14:07"
);

CREATE TABLE ItemMappingIdTemp
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    brand_name NVARCHAR(255) NULL,
    item_ref NVARCHAR(255) NULL,
    New_Brand_Name NVARCHAR(255) NULL,
    Bestseller NVARCHAR(255) NULL
);

DESC ItemMappingIdTemp;

INSERT INTO ItemMappingIdTemp
(
    brand_name,
    item_ref,
    New_Brand_Name,
    Bestseller
)
VALUES 
(
    "AUDI",
    "324892",
    "AUDI NEW BRAND",
    "Joe Dan Models"
),
(
    "BMW",
    "324892",
    "BMW NEW BRAND",
    "Joe Dan Models"
),
(
    "TESLA",
    "324892",
    "TESLA NEW BRAND",
    "Joe Dan Models"
),
(
    "AUDI",
    "32424",
    "AUDI NEW BRAND",
    "Joe Dan Models"
),
(
    "MERCENDENZ BENZ",
    "324892",
    "NENZ 3453",
    "Joe Dan Models"
),
(
    "AUDI",
    "324892",
    "AUDI NEW BRAND",
    "Joe Dan Models"
),
(
    "BMW",
    "324892",
    "BMW NEW BRAND",
    "Joe Dan Models"
),
(
    "TESLA",
    "324892",
    "TESLA NEW BRAND",
    "Joe Dan Models"
),
(
    "AUDI",
    "32424",
    "AUDI NEW BRAND",
    "Joe Dan Models"
),
(
    "MERCENDENZ BENZ",
    "324892",
    "NENZ 3453",
    "Joe Dan Models"
);

CREATE TABLE OrderTemp_Cjm
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    order_no NVARCHAR(100) NULL,
    num INT(10) NULL,
    size_content1 NVARCHAR(255) NULL,
    order_date DATETIME(6) NULL,
    order_user NVARCHAR(100) NULL
);

DESC OrderTemp_Cjm;

INSERT INTO OrderTemp_Cjm
(
    order_no,
    num,
    size_content1,
    order_date,
    order_user
)
VALUES 
(
    "2342342"
    23,
    "SMALL",
    "2022-06-19 09:14:07",
    "2342323"
),
(
    "2342342"
    45,
    "LARGE",
    "2022-04-19 09:14:07",
    "5646454"
),
(
    "2342342"
    12,
    "MEDIUM",
    "2022-08-19 09:14:07",
    "2342323"
),
(
    "4535344",
    65,
    "SMALL",
    "2022-06-19 09:14:07",
    "2342323"
),
(
    "2342342"
    23,
    "SMALL",
    "2022-06-19 09:14:07",
    "2342323"
),
(
    "2342342"
    45,
    "LARGE",
    "2022-04-19 09:14:07",
    "5646454"
),
(
    "2342342"
    12,
    "MEDIUM",
    "2022-09-19 09:14:07",
    "2342323"
),
(
    "4535344",
    65,
    "SMALL",
    "2022-06-08 09:14:07",
    "2342323"
),
(
    "2342342"
    12,
    "MEDIUM",
    "2022-09-19 09:14:07",
    "2342323"
),
(
    "4535344",
    65,
    "SMALL",
    "2022-06-08 09:14:07",
    "2342323"
)
;

CREATE TABLE sys_feedbackInfo
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Brand NVARCHAR(100) NOT NULL,
    UserName NVARCHAR(100) NOT NULL,
    submitDate DATETIME(6) NOT NULL,
    IPAddress NVARCHAR(60) NOT NULL,
    feedbackItem NVARCHAR(100) NOT NULL,
    feedbackInfo NVARCHAR(400) NULL
);

DESC sys_feedbackInfo;

INSERT INTO sys_feedbackInfo
(
    Brand,
    UserName,
    submitDate,
    IPAddress,
    feedbackItem,
    feedbackInfo
)
VALUES
(
    "AUDI",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.32",
    "Car Feedback",
    "Please check to your nearby car sellling point"
),
(
    "TESLA",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "Car Feedback",
    "Please check to your nearby car sellling tesla point"
),
(
    "BENZ",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "Benz Feedback",
    "Please check to your nearby car sellling benz point"
),
(
    "BMW",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "BMW Feedback",
    "Please check to your nearby car sellling BMW point"
),
(
    "TOYOTA",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "TOYOTA Feedback",
    "Please check to your nearby car sellling Toyota point"
),
(
    "AUDI",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.32",
    "Car Feedback",
    "Please check to your nearby car sellling point"
),
(
    "TESLA",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "Car Feedback",
    "Please check to your nearby car sellling tesla point"
),
(
    "BENZ",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "Benz Feedback",
    "Please check to your nearby car sellling benz point"
),
(
    "BMW",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "BMW Feedback",
    "Please check to your nearby car sellling BMW point"
),
(
    "TOYOTA",
    "John Doe",
    "2022-06-08 09:14:07",
    "192.168.0.42"
    "TOYOTA Feedback",
    "Please check to your nearby car sellling Toyota point"
)
;


CREATE TABLE sys_feedbackItem
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    feedback NVARCHAR(400) NOT NULL,
    translateEn NVARCHAR(400) NOT NULL,
    display NVARCHAR(20) NOT NULL,
    CreateTime DATETIME(6) NULL
);

DESC sys_feedbackItem;

INSERT INTO sys_feedbackItem
(
    feedback,
    translateEn,
    display,
    CreateTime
)
VALUES
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单已确认",
    "Your order is confirmed",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单被公司品牌拒绝",
    "Your order is rejected by company brand",
    "ON_DRAW",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_DRAWER",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单已确认",
    "Your order is confirmed",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单被公司品牌拒绝",
    "Your order is rejected by company brand",
    "ON_DRAW",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_DRAWER",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单已确认",
    "Your order is confirmed",
    "ON_POPUP",
    "2022-06-08 09:14:07"
),
(
    "您的订单被公司品牌拒绝",
    "Your order is rejected by company brand",
    "ON_DRAW",
    "2022-06-08 09:14:07"
),
(
    "您的订单是在此商品上完成的",
    "Your order is made on this item",
    "ON_DRAWER",
    "2022-06-08 09:14:07"
);


CREATE TABLE sysdiagrams
(
    ID INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name NVARCHAR(256) NOT NULL,
    principal_id INT (4) NOT NULL,
    diagram_id INT(4) NOT NULL,
    version INT(4) NULL,
    definition VARBINARY(255) NULL
);

DESC sysdiagrams;

INSERT INTO sysdiagrams
(
    name,
    principal_id,
    diagram_id,
    version,
    definition
)
VALUES
(
    "Order form request diagram",
    123,
    234,
    23,
    "A diagram describing how order form request must be implemented"
),
(
    "Order confirmation diagram",
    123,
    435,
    2,
    "A diagram describing how order confirmation must be implemented"
),
(
    "Order form request diagram",
    54,
    43,
    12,
    "A diagram describing how order form request must be implemented"
),
(
    "Payment implementation Diagram",
    234,
    234,
    23,
    "A diagram describing how Payment must be implemented"
),
(
    "Order form request diagram",
    123,
    234,
    23,
    "A diagram describing how order form request must be implemented"
),
(
    "Order form request diagram",
    123,
    234,
    23,
    "A diagram describing how order form request must be implemented"
),
(
    "Order confirmation diagram",
    123,
    435,
    2,
    "A diagram describing how order confirmation must be implemented"
),
(
    "Order form request diagram",
    54,
    43,
    12,
    "A diagram describing how order form request must be implemented"
),
(
    "Payment implementation Diagram",
    234,
    234,
    23,
    "A diagram describing how Payment must be implemented"
),
(
    "Order form request diagram",
    123,
    234,
    23,
    "A diagram describing how order form request must be implemented"
);


CREATE TABLE tb_adminrecord
(
    AdrecordID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Title TEXT NOT NULL,
    Createperson TEXT NOT NULL,
    Createtime TEXT NOT NULL,
    DeptName TEXT NOT NULL,
    Content TEXT NOT NULL,
    Starttime TEXT NOT NULL,
    Endtime TEXT NOT NULL,
    State NVARCHAR(40) NOT NULL   
);

DESC tb_adminrecord;

INSERT INTO tb_adminrecord
(
    Title,
    Createperson,
    Createtime,
    DeptName,
    Content,
    Starttime,
    Endtime,
    State   
)
VALUES
(
    "Customs records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Work permits",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Population records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Customs records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Tax records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Work permits",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Population records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Customs records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Work permits",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
),
(
    "Population records",
    "2342343",
    "Morning",
    "Management Department",
    "Customs records for estimating the value of resident/non-resident trade and related transport and insurance services",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "VERIFIED"   
);

CREATE TABLE tb_adminrecordes
(
    AdrecordID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    ClientID TEXT NOT NULL,
    Title TEXT NOT NULL,
    Createtime TEXT NOT NULL,
    Brandbinding TEXT NOT NULL,
    Content TEXT NOT NULL,
    State TEXT NOT NULL,
    Viewingtime TEXT NOT NULL
);

DESC tb_adminrecordes;

INSERT INTO tb_adminrecordes
(
    ClientID,
    Title,
    Createtime,
    Brandbinding,
    Content,
    State,
    Viewingtime
)
VALUES
(
    "2342343",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "53435",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "42523",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "2342343",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "345344",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "345354",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "53435",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "42523",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "2342343",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "345344",
    "Paid customers",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
),
(
    "345354",
    "Tax records",
    "2022-05-08 09:14:07",
    "durability, do-everything design, and appeal across all sorts of rider types and styles",
    "Contains the list of paid customers",
    "VERIFIED",   
    "2022-05-08 09:14:07"
);

CREATE TABLE tb_API_Cust
(
    ID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Code NVARCHAR(100) NULL,
    CustomerName NVARCHAR(100) NULL,
    LoginID NVARCHAR(100) NULL,
    Password NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    CreateBy NVARCHAR(100) NULL
);

DESC tb_API_Cust;

INSERT INTO tb_API_Cust
(
    Code,
    CustomerName,
    LoginID,
    Password,
    CreateDate,
    CreateBy
)
VALUES
(
    "CUST234",
    "Joe Doe",
    "Joe",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST235",
    "Alexandra",
    "Alexandra",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST236",
    "Alison John",
    "Alison",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST237",
    "Andrea Peter",
    "Andrea",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST238",
    "Amelia",
    "Amelia",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST239",
    "Andrea",
    "Andrea",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST240",
    "Angela",
    "Angela",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST241",
    "Audrey",
    "Audrey",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST240",
    "Bernadette",
    "Bernadette",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
),
(
    "CUST241",
    "Carolyn",
    "Carolyn",
    "pass@123",
    "2022-05-08 09:14:07",
    "23424"
);

CREATE TABLE tb_API_Cust_delivery_addr
(
    ID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Code NVARCHAR(100) NULL,
    CompanyName NVARCHAR(100) NULL,
    Address1 NVARCHAR(100) NULL,
    Address2 NVARCHAR(100) NULL,
    Address3 NVARCHAR(100) NULL,
    ContactPerson NVARCHAR(100) NULL,
    Phone NVARCHAR(100) NULL,
    Fax NVARCHAR(100) NULL,
    Email NVARCHAR(100) NULL,
    Country NVARCHAR(100) NULL,
    City NVARCHAR(100) NULL,
    PostCode NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    CreateBy NVARCHAR(100) NULL
);

DESC tb_API_Cust_delivery_addr;

INSERT INTO tb_API_Cust_delivery_addr
(
    Code,
    CompanyName,
    Address1,
    Address2,
    Address3,
    ContactPerson,
    Phone,
    Fax,
    Email,
    Country,
    City,
    PostCode,
    CreateDate,
    CreateBy
)
VALUES
(
    "234234",
    "Kosovo Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kigali Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Yombi Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kosovo Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kigali Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Yombi Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kosovo Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Kigali Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
),
(
    "234234",
    "Yombi Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "4543SS",
    "peter@gmail.com",
    "Kosovo",
    "Kosovo",
    "3453534",
    "2022-05-08 09:14:07",
    "24324223"
);

CREATE TABLE tb_API_Cust_invoice_addr
(
    ID INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Code NVARCHAR(100) NULL,
    CompanyName NVARCHAR(100) NULL,
    Address1 NVARCHAR(400) NULL,
    Address2 NVARCHAR(400) NULL,
    Address3 NVARCHAR(400) NULL,
    ContactPerson NVARCHAR(400) NULL,
    Phone NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    CreateBy NVARCHAR(100) NULL
);

DESC tb_API_Cust_invoice_addr;

INSERT INTO tb_API_Cust_invoice_addr
(
    Code,
    CompanyName,
    Address1,
    Address2,
    Address3,
    ContactPerson,
    Phone,
    CreateDate,
    CreateBy
)
VALUES
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "BK Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "Pivot Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "BK Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "Pivot Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "STpeters Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "BK Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
),
(
    "234234",
    "Pivot Sales ltd",
    "Kosovo",
    "Prestina",
    "Prestina District",
    "John Peter",
    "+23445444453",
    "2022-05-08 09:14:07",
    "435345345"
);

CREATE TABLE tb_API_Item
(
    ApiId INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    ItemCode NVARCHAR(400) NULL,
    ItemName NVARCHAR(400) NULL,
    RetailerCode NVARCHAR(100) NULL,
    RetailerName NVARCHAR(100) NULL,
    ItemType NVARCHAR(100) NULL,
    ArtWorkThumbnailFile NVARCHAR(400) NULL,
    erp_item_code NVARCHAR(100) NULL,
    BrandName NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL
);

DESC tb_API_Item;

INSERT INTO tb_API_Item
(
    ItemCode,
    ItemName,
    RetailerCode,
    RetailerName,
    ItemType,
    ArtWorkThumbnailFile,
    erp_item_code,
    BrandName,
    CreateDate
)
VALUES
(
    "MACBOOK23423",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK65465",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "DELLVESTRO4535",
    "Dell Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "HPComputers3453",
    "Hp Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK23423",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK65465",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "DELLVESTRO4535",
    "Dell Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "HPComputers3453",
    "Hp Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK23423",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "MACBOOK65465",
    "Mac Book Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "DELLVESTRO4535",
    "Dell Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
),
(
    "HPComputers3453",
    "Hp Computer",
    "3443534534",
    "Joe Doe",
    "Electronics",
    "192.168.0.1/pics/34234234.jpg",
    "34535334",
    "MAC",
    "2022-05-08 09:14:07"
);


CREATE TABLE tb_API_ItemNotAppro
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    ItemName NVARCHAR(100) NULL,
    ItemStatus NVARCHAR(100) NULL,
    PostDate DATETIME(6) NULL
);

DESC tb_API_ItemNotAppro;

INSERT INTO tb_API_ItemNotAppro
(
    ItemName,
    ItemStatus,
    PostDate
)
VALUES
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "DELL",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "HP computer",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "PRINTER",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "DELL",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "HP computer",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "PRINTER",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "DELL",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "HP computer",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "PRINTER",
    "IN_STORE",
    "2022-05-08 09:14:07"
),
(
    "MacBook234",
    "IN_STORE",
    "2022-05-08 09:14:07"
);

CREATE TABLE tb_API_Module_Type
(
    ApiModuleTypeId VARCHAR(50) NOT NULL PRIMARY KEY,
    ApiModuleType NVARCHAR(100) NULL
);

DESC tb_API_Module_Type;

INSERT INTO tb_API_Module_Type
VALUES
(
    "65634563",
    "Confirm order"
),
(
    "56356",
    "Deliver order"
),
(
    "345353",
    "Porder"
),
(
    "345344",
    "Confirm order"
),
(
    "435356",
    "Deliver order"
),
(
    "647657",
    "Porder"
),
(
    "454563",
    "Confirm order"
),
(
    "356434",
    "Deliver order"
),
(
    "564356",
    "Porder"
);

CREATE TABLE tb_API_Sizetable
(
    ApiId INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    SizeTableName NVARCHAR(400) NULL,
    SizeTableContent NVARCHAR(255) NULL,
    CreateDate DATETIME(6) NULL,
    erp_item_code NVARCHAR(255) NULL
);

DESC tb_API_Sizetable;

INSERT INTO tb_API_Sizetable
(
    SizeTableName,
    SizeTableContent,
    CreateDate,
    erp_item_code 
)
VALUES
(
    "SizeTableName",
    "SizeTableContent",
    "2022-05-08 09:14:07",
    "3453245" 
),
(
    "Ordered items",
    "SizeTableContent",
    "2022-05-08 09:14:07",
    "3453245"  
),
(
    "Ordered items",
    "All ordered items",
    "2022-05-08 09:14:07",
    "3453245"  
);

CREATE TABLE tb_ArtworkPrintVersionHistory
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    guid_key NVARCHAR(100) NULL,
    version_number NVARCHAR(60) NULL,
    information TEXT(4000) NULL,
    others TEXT(2000) NULL,
    created_by NVARCHAR(100) NULL,
    created_date TIMESTAMP(6) NULL
);

DESC tb_ArtworkPrintVersionHistory;

INSERT INTO tb_ArtworkPrintVersionHistory
(
    guid_key,
    version_number,
    information,
    others,
    created_by,
    created_date
)
VALUES
(
    "2412341",
    "12",
    "Version for PO order delivery address",
    "Check shipping address",
    "345345",
    "2022-05-08 09:14:07"
),
(
    "2412341",
    "12",
    "Version for PO order delivery address",
    "Check shipping address",
    "345345",
    "2022-05-08 09:14:07"
),
(
    "2412341",
    "12",
    "Version for PO order delivery address",
    "Check shipping address",
    "345345",
    "2022-05-08 09:14:07"
),
(
    "2412341",
    "12",
    "Version for PO order delivery address",
    "Check shipping address",
    "345345",
    "2022-05-08 09:14:07"
);

CREATE TABLE tb_AsosOrderPoSize
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    GuidKey NVARCHAR(100) NULL,
    OrderKey NVARCHAR(100) NULL,
    BrandId NVARCHAR(100) NULL,
    EdiOrderNo NVARCHAR(100) NULL,
    ConsolidatedId NVARCHAR(100) NULL,
    SizeContent NVARCHAR(100) NULL,
    SendDate NVARCHAR(100) NULL,
    CreateDate NVARCHAR(100) NULL,
    total_qty1 NVARCHAR(100) NULL,
    total_qty2 NVARCHAR(100) NULL,
    total_qty3 NVARCHAR(100) NULL,
    total_qty4 NVARCHAR(100) NULL,
    total_qty5 NVARCHAR(100) NULL,
    total_qty6 NVARCHAR(100) NULL,
    total_qty7 NVARCHAR(100) NULL,
    total_qty8 NVARCHAR(100) NULL,
    total_qty9 NVARCHAR(100) NULL,
    total_qty10 NVARCHAR(100) NULL
);

DESC tb_AsosOrderPoSize;

INSERT INTO tb_AsosOrderPoSize
(
    GuidKey,
    OrderKey,
    BrandId,
    EdiOrderNo,
    ConsolidatedId,
    SizeContent,
    SendDate,
    CreateDate,
    total_qty1,
    total_qty2,
    total_qty3,
    total_qty4,
    total_qty5,
    total_qty6,
    total_qty7,
    total_qty8,
    total_qty9,
    total_qty10
)
VALUES
(
    "34563",
    "34525",
    "345354",
    "3543534",
    "435345",
    "SizeContent",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "21",
    "12",
    "23",
    "8",
    "34",
    "2",
    "5",
    "6",
    "12",
    "34"
),
(
    "76467",
    "34525",
    "345354",
    "3543534",
    "435345",
    "SizeContent",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "21",
    "12",
    "23",
    "8",
    "34",
    "2",
    "5",
    "6",
    "12",
    "34"
),
(
    "53665",
    "34525",
    "345354",
    "3543534",
    "435345",
    "SizeContent",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "21",
    "12",
    "23",
    "8",
    "34",
    "2",
    "5",
    "6",
    "12",
    "34"
),
(
    "7356",
    "34525",
    "345354",
    "3543534",
    "435345",
    "SizeContent",
    "2022-05-08 09:14:07",
    "2022-05-08 09:14:07",
    "21",
    "12",
    "23",
    "8",
    "34",
    "2",
    "5",
    "6",
    "12",
    "34"
);

CREATE TABLE tb_AsosPo
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    PoNumber NVARCHAR(100) NULL,
    NewPoNumber NVARCHAR(100) NULL
);

DESC tb_AsosPo;

INSERT INTO tb_AsosPo
(
    PoNumber,
    NewPoNumber
)
VALUES
(
    "435345",
    "536546" 
),
(
    "76467",
    "536546" 
),
(
    "467345",
    "536546" 
),
(
    "234542",
    "536546" 
);

CREATE TABLE tb_auto_artwork_dtl
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    guid_key NVARCHAR(16) NULL,
    Artwork_Structure_XML NVARCHAR(100) NULL,
    Artwork_Data_XML NVARCHAR(100) NULL,
    isCompress NVARCHAR(100) NULL
);

DESC tb_auto_artwork_dtl;

INSERT INTO tb_auto_artwork_dtl
(
    guid_key,
    Artwork_Structure_XML,
    Artwork_Data_XML,
    isCompress
)
VALUES
(
    "34535435",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "56353456",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "24534545",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "67467655",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
);

CREATE TABLE tb_auto_artwork_dtl_log
(
    ID INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    guid_key NVARCHAR(100) NULL,
    Artwork_Structure_XML NVARCHAR(100) NULL,
    Artwork_Data_XML NVARCHAR(100) NULL,
    isCompress NVARCHAR(100) NULL
);

DESC tb_auto_artwork_dtl_log;

INSERT INTO tb_auto_artwork_dtl_log
(
    guid_key,
    Artwork_Structure_XML,
    Artwork_Data_XML,
    isCompress
)
VALUES
(
    "34535435",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "56353456",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "24534545",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
),
(
    "67467655",
    "Structure: the organization and  Example: elements representing artist name, born-death dates",
    "Artwork_Data_XML",
    "Y"
);

CREATE TABLE tb_auto_artwork_log
(
    id INT(16) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    IPAddress NVARCHAR(100) NULL,
    RequestUrl NVARCHAR(100) NULL,
    guid_key NVARCHAR(100) NOT NULL,
    Type NVARCHAR(100) NULL,
    UID NVARCHAR(100) NULL,
    Other NVARCHAR(100) NULL,
    sign NCHAR(20) NULL,
    Total_Page_No NVARCHAR(100) NULL,
    PNG NVARCHAR(400) NULL,
    PDF NVARCHAR(400) NULL,
    create_date DATETIME(6) NULL,
    Version NVARCHAR(20) NULL,
    Artwork_Width FLOAT(9) NULL,
    Artwork_Height FLOAT(9) NULL,
    Inkscape_Version NVARCHAR(100) NULL,
    label NVARCHAR(100) NULL
);

DESC tb_auto_artwork_log;

INSERT INTO tb_auto_artwork_log
(
    IPAddress,
    RequestUrl,
    guid_key,
    Type,
    UID,
    Other,
    sign,
    Total_Page_No,
    PNG,
    PDF,
    create_date,
    Version,
    Artwork_Width,
    Artwork_Height,
    Inkscape_Version,
    label
)
VALUES
(
    "198.245.4.33",
    "/users",
    "345543",
    "FAIL",
    "34534rad3453drd",
    "Other ...",
    "Network Connection",
    "43",
    "PNG document link",
    "PDF document link",
    "2022-05-08 09:14:07",
    "v3",
    43554.4,
    4345.4,
    "V4",
    "Network connection problem"
),
(
    "198.245.4.33",
    "/orders",
    "345543",
    "FAIL",
    "34534rad3453drd",
    "Other ...",
    "Network Connection",
    "43",
    "PNG document link",
    "PDF document link",
    "2022-05-08 09:14:07",
    "v3",
    43554.4,
    4345.4,
    "V4",
    "Network connection problem"
),
(
    "198.245.4.33",
    "/sizetable",
    "345543",
    "FAIL",
    "34534rad3453drd",
    "Other ...",
    "Network Connection",
    "43",
    "PNG document link",
    "PDF document link",
    "2022-05-08 09:14:07",
    "v3",
    43554.4,
    4345.4,
    "V4",
    "Network connection problem"
),
(
    "198.245.4.33",
    "/create-order",
    "345543",
    "FAIL",
    "34534rad3453drd",
    "Other ...",
    "Network Connection",
    "43",
    "PNG document link",
    "PDF document link",
    "2022-05-08 09:14:07",
    "v3",
    43554.4,
    4345.4,
    "V4",
    "Network connection problem"
);

CREATE TABLE tb_auto_artwork_regenerate
(
    id INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    brandKey NVARCHAR(100) NULL,
    brandName NVARCHAR(100) NULL,
    orderNo NVARCHAR(100) NULL,
    reGenCount INT(4) NULL,
    createDate DATETIME(6) NULL,
    modifityDate DATETIME(6) NULL
);

DESC tb_auto_artwork_regenerate;

INSERT INTO tb_auto_artwork_regenerate
(
    brandKey,
    brandName,
    orderNo,
    reGenCount,
    createDate
)
VALUES 
(
    "234245",
    "Teslati",
    '2342',
    12,
    "2022-05-08 09:14:07"
),
(
    "234245",
    "BMW",
    '2342',
    12,
    "2022-05-08 09:14:07"
),
(
    "234245",
    "BENZ",
    '2342',
    12,
    "2022-05-08 09:14:07"
);

CREATE TABLE tb_AwXmlConfig
(
    id INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    GuidKey NVARCHAR(100) NULL,
    BrandId NVARCHAR(100) NULL,
    ExportMode NVARCHAR(100) NULL,
    KeyField NVARCHAR(100) NULL,
    TranslationLanguage NVARCHAR(100) NULL,
    CreateBy NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    LastBy NVARCHAR(100) NULL,
    LastDate TIMESTAMP(6) NULL,
    FtpIp NVARCHAR(40) NULL,
    FtpLogin NVARCHAR(100) NULL,
    FtpPwd NVARCHAR(100) NULL,    
    FtpModel CHAR(100) NULL,    
    IsTwoXml NVARCHAR(10) NULL    
);

DESC tb_AwXmlConfig;

INSERT INTO tb_AwXmlConfig
(
    GuidKey,
    BrandId,
    ExportMode,
    KeyField,
    TranslationLanguage,
    CreateBy,
    CreateDate,
    LastBy,
    LastDate,
    FtpIp,
    FtpLogin,
    FtpPwd,    
    FtpModel,    
    IsTwoXml    
)
VALUES
(
    "213413",
    "234134",
    "Y",
    "KeyField",
    "TranslationLanguage",
    "12341",
    "2022-05-08 09:14:07",
    "1341234",
    "2022-05-08 09:14:07",
    "192.134.34.22",
    "LoginId",
    "pass@123",    
    "FtpModel",    
    "Y"    
);

CREATE TABLE tb_Brand_Artwork_Preview_Setting
(
    guid_key NVARCHAR(100) PRIMARY KEY NOT NULL,
    brandid NVARCHAR(100) NOT NULL,
    trans_type NVARCHAR(20) NULL,
    country_code NVARCHAR(20) NULL,
    percentage INT(4) NULL,
    show_percentage CHAR(1) NULL,
    part_group_seq INT(1) NULL,
    part_group_show CHAR(1) NULL,
    default_content NVARCHAR(8000) NULL,
    created_date DATETIME(6) NULL,
    created_by NVARCHAR(100) NULL,
    modified_date DATETIME(6) NULL,
    modified_by NVARCHAR(100) NULL
);

DESC tb_Brand_Artwork_Preview_Setting;

INSERT INTO tb_Brand_Artwork_Preview_Setting
VALUES
(
    "42353425435",
    "3452353",
    "PURCHARSE",
    "RW3435453",
    70,
    'Y',
    1,
    'Y',
    "Create a key phrase built around your core competency",
    "2022-06-04 11:50:05",
    "425454352453",
    "2022-06-04 12:50:05",
    "334523453544"
),
(
    "3425325",
    "3452353",
    "PURCHARSE",
    "RW3435453",
    70,
    'Y',
    1,
    'Y',
    "Define your key core competency or best thing you offer. Take some time, sit down and really apply yourself to defining the single best thing that you do",
    "2022-06-04 11:50:05",
    "425454352453",
    "2022-06-04 12:50:05",
    "334523453544"
),
(
    "43253253",
    "3452353",
    "PURCHARSE",
    "RW3435453",
    70,
    'Y',
    1,
    'Y',
    "Create a key phrase built around your core competency",
    "2022-06-04 11:50:05",
    "425454352453",
    "2022-06-04 12:50:05",
    "334523453544"
),
(
    "63563546",
    "3452353",
    "PURCHARSE",
    "RW3435453",
    70,
    'Y',
    1,
    'Y',
    "Define your key core competency or best thing you offer. Take some time, sit down and really apply yourself to defining the single best thing that you do",
    "2022-06-04 11:50:05",
    "425454352453",
    "2022-06-04 12:50:05",
    "334523453544"
),
(
    "254325345",
    "3452353",
    "PURCHARSE",
    "RW3435453",
    70,
    'Y',
    1,
    'Y',
    "Create a key phrase built around your core competency",
    "2022-06-04 11:50:05",
    "425454352453",
    "2022-06-04 12:50:05",
    "334523453544"
);

CREATE TABLE tb_Brand_Artwork_Preview_Setting_Detail
(
    guid_key NVARCHAR(100) PRIMARY KEY NOT NULL,
    preview_key NVARCHAR(100) NOT NULL,
    cont_key NVARCHAR(100) NULL,
    gb_translation NVARCHAR(800) NULL
);

DESC tb_Brand_Artwork_Preview_Setting_Detail;

INSERT INTO tb_Brand_Artwork_Preview_Setting_Detail
VALUES
(
    "56354656",
    "privew_key_34342",
    "cont_key_2432423",
    "translations goes here"
),
(
    "3453534",
    "privew_key_34342",
    "cont_key_2432423",
    "translations goes here"
),
(
    "3453455",
    "privew_key_34342",
    "cont_key_2432423",
    "translations goes here"
),
(
    "34535345",
    "privew_key_34342",
    "cont_key_2432423",
    "translations goes here"
);

CREATE TABLE tb_Brand_Category
(
    ID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    guid_key NVARCHAR(100) NULL,
    Category_Name  NVARCHAR(600) NULL,
    Display  CHAR(1) NULL,
    file_path  NVARCHAR(100) NULL,
    CategoryDisplayRows  INT(4) NULL,
    createBy  NVARCHAR(100) NULL,
    createDate DATETIME(6) NULL,
    UpdateBy  NVARCHAR(100) NULL,
    UpdateDate DATETIME(6) NULL,
    company_guid_key  NVARCHAR(100) NULL
);

DESC tb_Brand_Category;

INSERT INTO tb_Brand_Category
(
    guid_key,
    Category_Name,
    Display,
    file_path,
    CategoryDisplayRows,
    createBy,
    createDate,
    UpdateBy,
    UpdateDate,
    company_guid_key
)
VALUES
(
    "2342423",
    "fashion",
    'Y',
    "/photos/brand.jpg",
    34,
    "3453454",
    "2022-03-03 12:06:23",
    "3453543",
    "2022-09-03 12:06:23",
    "company_34534"
),
(
    "2342423",
    "Personal brand",
    'Y',
    "/photos/brand.jpg",
    12,
    "3453454",
    "2022-03-03 12:06:23",
    "3453543",
    "2022-09-03 12:06:23",
    "company_34534"
),
(
    "2342423",
    "Product brand",
    'Y',
    "/photos/brand.jpg",
    32,
    "3453454",
    "2022-03-03 12:06:23",
    "3453543",
    "2022-09-03 12:06:23",
    "company_34534"
),
(
    "2342423",
    "Activist brand",
    'Y',
    "/photos/brand.jpg",
    73,
    "3453454",
    "2022-03-03 12:06:23",
    "3453543",
    "2022-09-03 12:06:23",
    "company_34534"
);


CREATE TABLE tb_Brand_Country_Code
(
    id INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    brandid NVARCHAR(100) NULL,
    country_code_key NVARCHAR(100) NULL,
    show_status NCHAR(20) NULL,
    seqno INT(4) NULL,
    alias NVARCHAR(100) NULL,
    inkscape_sep NVARCHAR(100) NULL,
    IsSeparateLang CHAR(1)
);

DESC tb_Brand_Country_Code;

INSERT INTO tb_Brand_Country_Code
(
    brandid,
    country_code_key,
    show_status,
    seqno,
    alias,
    inkscape_sep,
    IsSeparateLang
)
VALUES
(
    "245245",
    "tesla_india_3453",
    "SHIPPED",
    453,
    "Gucci india",
    "Ink scape 1",
    'Y'
),
(
    "245245",
    "tesla_india_3453",
    "SHIPPED",
    453,
    "Bmw india",
    "Ink scape 1",
    'Y'
),
(
    "245245",
    "teslati_india_3453",
    "SHIPPED",
    453,
    "Telsati india",
    "Ink scape 1",
    'Y'
),
(
    "245245",
    "tesla_india_3453",
    "SHIPPED",
    453,
    "Telsa india",
    "Ink scape 1",
    'Y'
);

CREATE TABLE tb_brand_erp_code
(
    ID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    brandid NVARCHAR(100) NULL,
    content NVARCHAR(400) NULL,
    erp_status CHAR(1) NULL,
    erpid INT(4) NULL
);

DESC tb_brand_erp_code;

INSERT INTO tb_brand_erp_code
(
    brandid,
    content,
    erp_status,
    erpid
)
VALUES
(
    "35435",
    "software that organizations use to manage day-to-day business activities such as accounting, procurement,",
    'Y',
    654
),
(
    "345352",
    "software that organizations use to manage day-to-day business activities such as accounting, procurement,",
    'Y',
    454
),
(
    "67345636",
    "software that organizations use to manage day-to-day business activities such as accounting, procurement,",
    'Y',
    343
),
(
    "3563563",
    "software that organizations use to manage day-to-day business activities such as accounting, procurement,",
    'Y',
    23
),
(
    "35635234",
    "software that organizations use to manage day-to-day business activities such as accounting, procurement,",
    'Y',
    8675
);

CREATE TABLE tb_Brand_Fields
(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    brandid NVARCHAR(100) NULL,
    fieldsid NVARCHAR(100) NULL,
    show_status NCHAR(2),
    seqNo INT(4),
    contro_type NVARCHAR(100) NULL,
    fContro_Name NVARCHAR(400) NULL,
    file_path NVARCHAR(200) NULL,
    htmlwidth NVARCHAR(100) NULL,
    AwName NVARCHAR(100) NULL,
    EdiFieldMapping  NVARCHAR(100) NULL,
    ShowNoOrderForm  NCHAR(2) NULL,
    MaxLength  NVARCHAR(20) NULL
);

DESC tb_Brand_Fields;

INSERT INTO tb_Brand_Fields
(
    brandid,
    fieldsid,
    show_status,
    seqNo,
    contro_type,
    fContro_Name,
    file_path,
    htmlwidth,
    AwName,
    EdiFieldMapping,
    ShowNoOrderForm,
    MaxLength
)
VALUES
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 2",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
),
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 3",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
),
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 4",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
),
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 5",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
),
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 6",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
),
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 7",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
),
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 8",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
),
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 9",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
),
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 10",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
),
(
    "brand_2432",
    "354354",
    'Y',
    234,
    "STRING",
    "Brand field 11",
    "/brand-file/file.jpg",
    '3000',
    "Name 2",
    "Field mapping",
    'N',
    '5000'
);

CREATE TABLE tb_Brand_item_ref
(
    id INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    brandid NVARCHAR(200) NULL,
    item_guid_key NVARCHAR(200) NULL,
    seqno INT(4) NULL
);

DESC tb_Brand_item_ref;

INSERT INTO tb_Brand_item_ref
(
    brandid,
    item_guid_key,
    seqno
)
VALUES
(
   "453435",
    "key_23432",
    5443
),
(
   "2342344",
    "key_23432",
    3453
),
(
   "4353345",
    "key_23432",
    3453
),
(
   "2342344",
    "key_23432",
    5675
),
(
   "3452345",
    "key_23432",
    6575
),
(
   "536546",
    "key_23432",
    567
),
(
   "467465",
    "key_23432",
    5765
),
(
   "75675",
    "key_23432",
    5565
),
(
   "453435",
    "key_23432",
    5443
),
(
   "2342344",
    "key_23432",
    3453
),
(
   "4353345",
    "key_23432",
    3453
);

CREATE TABLE tb_BrandCategory
(
    ID INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CategoryName NVARCHAR(100) NULL,
    BrandId NVARCHAR(100) NULL,
    IsEnabled CHAR(1) NULL,
    CreateBy  NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    UpdateBy  NVARCHAR(100) NULL,
    UpdateDate DATETIME(6) NULL
);

DESC tb_BrandCategory;

INSERT INTO tb_BrandCategory
(
    CategoryName,
    BrandId,
    IsEnabled,
    CreateBy,
    CreateDate,
    UpdateBy,
    UpdateDate
)
VALUES
(
    "Personal brand",
    "34535",
    'Y',
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "Service brand",
    "34535",
    'Y',
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "Product brand",
    "34535",
    'Y',
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "Activist brand",
    "34535",
    'Y',
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "NGO brand",
    "34535",
    'Y',
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "Luxury brand",
    "34535",
    'Y',
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "Public brand",
    "34535",
    'Y',
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "Value brand",
    "34535",
    'Y',
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
);

CREATE TABLE tb_BrandCustomRemark
(
    ID INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    BrandId NVARCHAR(100) NOT NULL,
    IsEnable CHAR(1) NULL,
    _separator NVARCHAR(10) NULL,
    CreateBy NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    UpdateBy NVARCHAR(100) NULL,
    UpdateDate DATETIME(6) NULL
);

DESC tb_BrandCustomRemark;

INSERT INTO tb_BrandCustomRemark
(
    BrandId,
    IsEnable,
    _separator,
    CreateBy,
    CreateDate,
    UpdateBy,
    UpdateDate 
)
VALUES
(
    "252452",
    'Y',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "67456745",
    'N',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "4563456",
    'Y',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "7353656",
    'Y',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "8536345",
    'N',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "252452",
    'Y',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "67456745",
    'N',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "4563456",
    'Y',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "7353656",
    'Y',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
),
(
    "8536345",
    'N',
    "gatsby",
    "345435435",
    "2022-06-04 12:04:04",
    "635634555",
    "2022-06-05 12:04:04"
);

CREATE TABLE tb_BrandIconConfigure
(
    GuidKey NVARCHAR(100) NOT NULL PRIMARY KEY,
    IconTypeId INT(4) NULL,
    BrandId NVARCHAR(100) NULL,
    Alias NVARCHAR(100) NULL,
    SeqNo INT(4) NULL,
    IconType CHAR(1) NULL,
    IsEnable CHAR(1) NULL
);

DESC tb_BrandIconConfigure;

INSERT INTO tb_BrandIconConfigure
(
    GuidKey ,
    IconTypeId,
    BrandId,
    Alias,
    SeqNo,
    IconType,
    IsEnable
)
VALUES
(
    "8365356",
    84,
    "34535435",
    "font awesome",
    435,
    'F',
    'Y'
),
(
    "536346",
    34,
    "3653643",
    "Fav awesome",
    435,
    'F',
    'Y'
),
(
    "353453",
    23,
    "34535435",
    "Remix icons",
    3453,
    'F',
    'Y'
),
(
    "836734",
    564,
    "34535435",
    "Boostrap icon",
    4564,
    'F',
    'Y'
),
(
    "73563463",
    12,
    "34535435",
    "font awesome",
    435,
    'F',
    'Y'
),
(
    "73562345233",
    12,
    "34535435",
    "font awesome",
    435,
    'F',
    'Y'
),
(
    "252352",
    34,
    "3653643",
    "Fav awesome",
    435,
    'F',
    'Y'
),
(
    "6245233",
    23,
    "34535435",
    "Remix icons",
    3453,
    'F',
    'Y'
),
(
    "836534",
    564,
    "34535435",
    "Boostrap icon",
    4564,
    'F',
    'Y'
),
(
    "735634463",
    12,
    "34535435",
    "font awesome",
    435,
    'F',
    'Y'
),
(
    "9578578",
    12,
    "34535435",
    "font awesome",
    435,
    'F',
    'Y'
),
(
    "3452333",
    34,
    "3653643",
    "Fav awesome",
    435,
    'F',
    'Y'
),
(
    "3653445",
    23,
    "34535435",
    "Remix icons",
    4345,
    'F',
    'Y'
),
(
    "4444234",
    564,
    "34535435",
    "Boostrap icon",
    4564,
    'F',
    'Y'
),
(
    "5433333",
    343,
    "73356345",
    "font awesome",
    435,
    'F',
    'Y'
);

CREATE TABLE tb_BrandLeft_Up
(
    Guid_key NVARCHAR(100) NOT NULL PRIMARY KEY,
    Brandid NVARCHAR(100) NULL,
    FieldId NVARCHAR(100) NULL,
    FieldCode NVARCHAR(400) NULL,
    CreateBy NVARCHAR(100) NULL,
    CreateDate NVARCHAR(100) NULL,
    Upcontent NVARCHAR(1200) NULL
);

DESC tb_BrandLeft_Up;

INSERT INTO tb_BrandLeft_Up
VALUES
(
    '7354624',
    '345245',
    '2542534',
    '245234534',
    "345435435",
    "2022-06-04 12:04:04",
    "Brand left up content"
),
(
    '2452345',
    '345245',
    '2542534',
    '245234534',
    "345435435",
    "2022-06-04 12:04:04",
    "Brand left up content"
),
(
    '4442343',
    '345245',
    '2542534',
    '245234534',
    "345435435",
    "2022-06-04 12:04:04",
    "Brand left up content"
),
(
    '4435234',
    '345245',
    '2542534',
    '245234534',
    "345435435",
    "2022-06-04 12:04:04",
    "Brand left up content"
),
(
    '6642533',
    '345245',
    '2542534',
    '245234534',
    "345435435",
    "2022-06-04 12:04:04",
    "Brand left up content"
),
(
    '75356344',
    '345245',
    '2542534',
    '245234534',
    "345435435",
    "2022-06-04 12:04:04",
    "Brand left up content"
),
(
    '55546345',
    '345245',
    '2542534',
    '245234534',
    "345435435",
    "2022-06-04 12:04:04",
    "Brand left up content"
),
(
    '552345233',
    '345245',
    '2542534',
    '245234534',
    "345435435",
    "2022-06-04 12:04:04",
    "Brand left up content"
),
(
    '44245235',
    '345245',
    '2542534',
    '245234534',
    "345435435",
    "2022-06-04 12:04:04",
    "Brand left up content"
); 

CREATE TABLE tb_BrandLeft_Up_Multi
(
    ID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FieldId NVARCHAR(100) NULL,
    CreateBy NVARCHAR(100) NULL,
    CreateDate NVARCHAR(100) NULL,
    Upcontent1 NVARCHAR(600) NULL,
    Upcontent2 NVARCHAR(600) NULL,
    Upcontent3 NVARCHAR(600) NULL,
    Upcontent4 NVARCHAR(600) NULL,
    Upcontent5 NVARCHAR(600) NULL,
    Type CHAR(1) NULL
);

DESC tb_BrandLeft_Up_Multi;

INSERT INTO tb_BrandLeft_Up_Multi
(
    FieldId,
    CreateBy,
    CreateDate,
    Upcontent1,
    Upcontent2,
    Upcontent3,
    Upcontent4,
    Upcontent5,
    Type
)
VALUES
(
    "2453253",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
),
(
    "2543253",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
),
(
    "4325353",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
),
(
    "6234534",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
),
(
    "523452523",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
),
(
    "543252345",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
),
(
    "254325325",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
),
(
    "4325353",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
),
(
    "24532452",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
),
(
    "62435233",
    "3452453",
    "2022-03:04 20:20:04",
    "up content 1",
    "up content 2",
    "up content 3",
    "up content 4",
    "up content 5",
    'N'
);

CREATE TABLE tb_Care
(
    careId INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    care_key NVARCHAR(100) NULL,
    id_number NVARCHAR(200) NULL,
    Email_ind CHAR(10) NULL,
    seqno INT(4) NULL,
    CreateBy  NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    last_email DATETIME(6) NULL,
    lastModifiedDate DATETIME(6) NULL,
    ItmCompletedDate DATETIME(6) NULL,
    LastSavedBy NVARCHAR(100) NULL,
    Userid NVARCHAR(100) NULL,
    brandid NVARCHAR(100) NULL,
    Remak TEXT(16),
    custom_number NVARCHAR(100) NULL
);

DESC tb_Care;

INSERT INTO tb_Care
(
    care_key,
    id_number,
    Email_ind,
    seqno,
    CreateBy,
    CreateDate,
    last_email,
    lastModifiedDate,
    ItmCompletedDate,
    LastSavedBy,
    Userid,
    brandid,
    Remak,
    custom_number
)
VALUES
(
    "5243532",
    "199323423423422",
    'Y',
    "34523425",
    "523453253",
    "2022-03-04 20:12:33",
    "2022-03-03 20:12:33",
    "2022-06-04 20:12:33",
    "2022-03-01 20:12:33",
    "432534533",
    "345444433",
    "345334454",
    "We are a design agency that aims to bring unprecedented change in space of digital media and branding with the services that makes the brand most relatable",
    "3453"
),
(
    "5243532",
    "199323423423422",
    'Y',
    "34523425",
    "523453253",
    "2022-03-04 20:12:33",
    "2022-03-03 20:12:33",
    "2022-06-04 20:12:33",
    "2022-03-01 20:12:33",
    "432534533",
    "345444433",
    "345334454",
    "We are a design agency that aims to bring unprecedented change in space of digital media and branding with the services that makes the brand most relatable",
    "3453"
),
(
    "5243532",
    "199323423423422",
    'Y',
    "34523425",
    "523453253",
    "2022-03-04 20:12:33",
    "2022-03-03 20:12:33",
    "2022-06-04 20:12:33",
    "2022-03-01 20:12:33",
    "432534533",
    "345444433",
    "345334454",
    "We are a design agency that aims to bring unprecedented change in space of digital media and branding with the services that makes the brand most relatable",
    "3453"
),
(
    "5243532",
    "199323423423422",
    'Y',
    "34523425",
    "523453253",
    "2022-03-04 20:12:33",
    "2022-03-03 20:12:33",
    "2022-06-04 20:12:33",
    "2022-03-01 20:12:33",
    "432534533",
    "345444433",
    "345334454",
    "We are a design agency that aims to bring unprecedented change in space of digital media and branding with the services that makes the brand most relatable",
    "3453"
),
(
    "5243532",
    "199323423423422",
    'Y',
    "34523425",
    "523453253",
    "2022-03-04 20:12:33",
    "2022-03-03 20:12:33",
    "2022-06-04 20:12:33",
    "2022-03-01 20:12:33",
    "432534533",
    "345444433",
    "345334454",
    "We are a design agency that aims to bring unprecedented change in space of digital media and branding with the services that makes the brand most relatable",
    "3453"
),
(
    "5243532",
    "199323423423422",
    'Y',
    "34523425",
    "523453253",
    "2022-03-04 20:12:33",
    "2022-03-03 20:12:33",
    "2022-06-04 20:12:33",
    "2022-03-01 20:12:33",
    "432534533",
    "345444433",
    "345334454",
    "We are a design agency that aims to bring unprecedented change in space of digital media and branding with the services that makes the brand most relatable",
    "3453"
),
(
    "5243532",
    "199323423423422",
    'Y',
    "34523425",
    "523453253",
    "2022-03-04 20:12:33",
    "2022-03-03 20:12:33",
    "2022-06-04 20:12:33",
    "2022-03-01 20:12:33",
    "432534533",
    "345444433",
    "345334454",
    "We are a design agency that aims to bring unprecedented change in space of digital media and branding with the services that makes the brand most relatable",
    "3453"
),
(
    "5243532",
    "199323423423422",
    'Y',
    "34523425",
    "523453253",
    "2022-03-04 20:12:33",
    "2022-03-03 20:12:33",
    "2022-06-04 20:12:33",
    "2022-03-01 20:12:33",
    "432534533",
    "345444433",
    "345334454",
    "We are a design agency that aims to bring unprecedented change in space of digital media and branding with the services that makes the brand most relatable",
    "3453"
);

CREATE TABLE tb_Care_Country_Code
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brandid NVARCHAR(100) NULL,
    country_code_key NVARCHAR(100) NULL,
    show_status NCHAR(20) NULL,
    seqno  INT(4) NULL,
    alias NVARCHAR(100) NULL,
    inkscape_sep NVARCHAR(100) NULL,
    IsSeparateLang CHAR(1) NULL
);

DESC tb_Care_Country_Code;

INSERT INTO tb_Care_Country_Code
(
    brandid,
    country_code_key,
    show_status,
    seqno,
    alias,
    inkscape_sep,
    IsSeparateLang
)
VALUES
(
    "23424235",
    "RW_3453523",
    "PUBLISHED",
    323,
    "RWANDA country code",
    "ink cape seq",
    'Y'
),
(
    "23424235",
    "RW_3453523",
    "PUBLISHED",
    323,
    "RWANDA country code",
    "ink cape seq",
    'Y'
),
(
    "23424235",
    "IND_3453523",
    "PUBLISHED",
    323,
    "INDIA country code",
    "ink cape seq",
    'Y'
),
(
    "23424235",
    "RW_3453523",
    "PUBLISHED",
    323,
    "RWANDA country code",
    "ink cape seq",
    'Y'
),
(
    "23424235",
    "IND_3453523",
    "PUBLISHED",
    323,
    "INDIA country code",
    "ink cape seq",
    'Y'
),
(
    "23424235",
    "IND_3453523",
    "PUBLISHED",
    323,
    "INDIA country code",
    "ink cape seq",
    'Y'
),
(
    "23424235",
    "RW_3453523",
    "PUBLISHED",
    323,
    "RWANDA country code",
    "ink cape seq",
    'Y'
),
(
    "23424235",
    "IND_3453523",
    "PUBLISHED",
    323,
    "INDIA country code",
    "ink cape seq",
    'Y'
),
(
    "23424235",
    "IND_3453523",
    "PUBLISHED",
    323,
    "INDIA country code",
    "ink cape seq",
    'Y'
);

CREATE TABLE tb_Care_dtL
(
    id INT(4) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    care_key NVARCHAR(100) NULL,
    CareItem_key  NVARCHAR(100) NULL,
    Cont_key  NVARCHAR(100) NULL,
    seqno INT(4) NULL
);

DESC tb_Care_dtL;

INSERT INTO tb_Care_dtL
(
    care_key,
    CareItem_key,
    Cont_key,
    seqno
)
VALUES
(
    "354325345",
    "42543253",
    "625425353",
    34
),
(
    "5464365",
    "3653646",
    "63563465",
    45
),
(
    "6365456",
    "42543253",
    "365465",
    23
),
(
    "4525345",
    "42543253",
    "245235",
    65
),
(
    "2345235345",
    "6245234",
    "43444523",
    12
),
(
    "125423344",
    "42543253",
    "625425353",
    23
),
(
    "354325345",
    "42543253",
    "625425353",
    34
),
(
    "5464365",
    "3653646",
    "63563465",
    45
),
(
    "6365456",
    "42543253",
    "365465",
    23
),
(
    "4525345",
    "42543253",
    "245235",
    65
),
(
    "2345235345",
    "6245234",
    "43444523",
    12
),
(
    "125423344",
    "42543253",
    "625425353",
    23
);

CREATE TABLE tb_care_dtl_temp
(
    id INT(4) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    care_key NVARCHAR(100) NULL,
    CareItem_key NVARCHAR(100) NULL,
    care NVARCHAR(1000) NULL,
    Cont_key NVARCHAR(100) NULL,
    seqno INT(4) NULL,
    errormsg NVARCHAR(1000) NULL
);

DESC tb_care_dtl_temp;

INSERT INTO tb_care_dtl_temp
(
    care_key,
    CareItem_key,
    care,
    Cont_key,
    seqno,
    errormsg
)
VALUES
(
    "34524534",
    '43523454',
    "CARE 1",
    "23422",
    23,
    "Please check link in description below"
),
(
    "34524534",
    '43523454',
    "CARE 2",
    "23422",
    23,
    "Please check link in description below"
),
(
    "34524534",
    '43523454',
    "CARE 3",
    "23422",
    23,
    "Please check link in description below"
),
(
    "34524534",
    '43523454',
    "CARE 4",
    "23422",
    23,
    "Please check link in description below"
),
(
    "34524534",
    '43523454',
    "CARE 5",
    "23422",
    23,
    "Please check link in description below"
),
(
    "34524534",
    '43523454',
    "CARE 6",
    "23422",
    23,
    "Please check link in description below"
),
(
    "34524534",
    '43523454',
    "CARE 2",
    "23422",
    23,
    "Please check link in description below"
),
(
    "34524534",
    '43523454',
    "CARE 7",
    "23422",
    23,
    "Please check link in description below"
),
(
    "34524534",
    '43523454',
    "CARE 8",
    "23422",
    23,
    "Please check link in description below"
),
(
    "34524534",
    '43523454',
    "CARE 10",
    "23422",
    23,
    "Please check link in description below"
);

CREATE TABLE tb_care_icon
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    care_key NVARCHAR(100) NULL,
    careicon_key NVARCHAR(100) NULL,
    seqno INT(4) NULL,
    sysicon_key NVARCHAR(100) NULL,
    IconType CHAR(10) NULL,
    IconTypeId INT(4) NULL
);

DESC tb_care_icon;

INSERT INTO tb_care_icon
(
    care_key,
    careicon_key,
    seqno,
    sysicon_key,
    IconType,
    IconTypeId
)
VALUES
(
    "4634636456",
    "345325455",
    43,
    "RW5634566",
    'F',
    23
),
(
    "4634636456",
    "345325455",
    54,
    "RW5634566",
    'F',
    43
),
(
    "4634636456",
    "345325455",
    65,
    "RW5634566",
    'F',
    23
),
(
    "4634636456",
    "345325455",
    43,
    "RW5634566",
    'F',
    8
),
(
    "4634636456",
    "345325455",
    43,
    "RW5634566",
    'F',
    23
),
(
    "4634636456",
    "345325455",
    54,
    "RW5634566",
    'F',
    43
),
(
    "4634636456",
    "345325455",
    65,
    "RW5634566",
    'F',
    23
),
(
    "4634636456",
    "345325455",
    43,
    "RW5634566",
    'F',
    8
);



CREATE TABLE tb_care_icon_error
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    care_key NVARCHAR(100) NULL,
    careicon_key NVARCHAR(100) NULL,
    seqno INT(4) NULL,
    sysicon  NVARCHAR(1000) NULL,
    sysicon_key  NVARCHAR(100) NULL,
    type  NVARCHAR(100) NULL,
    errormsg  NVARCHAR(100) NULL,
    iconSymbol  NVARCHAR(100) NULL,
    IconTypeId  NVARCHAR(40) NULL
);

DESC tb_care_icon_error;

INSERT INTO tb_care_icon_error
(
    care_key,
    careicon_key,
    seqno,
    sysicon,
    sysicon_key,
    type,
    errormsg,
    iconSymbol,
    IconTypeId
)
VALUES
(
    "34542435",
    "care_icon_345345",
    24,
    "icon 2",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
),
(
    "34542435",
    "care_icon_345345",
    24,
    "icon 3",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
),
(
    "34542435",
    "care_icon_345345",
    24,
    "icon4",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
),
(
    "34542435",
    "care_icon_345345",
    24,
    "icon 5",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
),
(
    "34542435",
    "care_icon_345345",
    24,
    "icon 6",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
),
(
    "34542435",
    "care_icon_345345",
    24,
    "icon 7",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
),
(
    "34542435",
    "care_icon_345345",
    24,
    "icon 8",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
),
(
    "34542435",
    "care_icon_345345",
    24,
    "icon 9",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
),
(
    "34542435",
    "care_icon_345345",
    24,
    "icon 10",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
),
(
    "34542435",
    "care_icon_345345",
    24,
    "icon 11",
    "icon34543534",
    "font awesome",
    "Not found",
    "simbol.jpg",
    "345345"
);

CREATE TABLE tb_care_icon_temp
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    care_key NVARCHAR(100) NULL,
    careicon_key NVARCHAR(100) NULL,
    seqno INT(4) NULL,
    sysicon NVARCHAR(1000) NULL,
    sysicon_key  NVARCHAR(100) NULL,
    type  NVARCHAR(100) NULL,
    errormsg  NVARCHAR(100) NULL,
    iconSymbol NVARCHAR(100) NULL,
    IconTypeId  NVARCHAR(40) NULL
);

DESC tb_care_icon_temp;

INSERT INTO tb_care_icon_temp
(
    care_key,
    careicon_key,
    seqno,
    sysicon,
    sysicon_key,
    type,
    errormsg,
    iconSymbol,
    IconTypeId
)
VALUES
(
    "2345235",
    "43523544",
    45,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
),
(
    "6343563",
    "43523544",
    23,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
),
(
    "735634",
    "43523544",
    34,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
),
(
    "634563465",
    "363545655",
    12,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
),
(
    "63245233",
    "43523544",
    74,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
),
(
    "56346556",
    "43523544",
    12,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
),
(
    "34534533",
    "36345344",
    734,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
),
(
    "56346556",
    "43523544",
    23,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
),
(
    "56346556",
    "43523544",
    23,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
),
(
    "56346556",
    "43523544",
    23,
    "system icon",
    "452543534",
    "font awesome",
    "Check the page description for more details...",
    "bell",
    "4353455"
);

CREATE TABLE BrandRecord(
    RecordID INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BrandID NVARCHAR(100) NOT NULL,
    BrandName NVARCHAR(200) NULL,
    Createperson NVARCHAR(40) NULL,
    Createdate DATETIME(6) NULL,
    Content NVARCHAR(400) NULL,
    Content1 NVARCHAR(400) NULL,
    BrandStart NVARCHAR(100) NULL,
    BrandEnd NVARCHAR(100) NULL,
    LayoutStart NVARCHAR(100) NULL,
    LayoutEnd NVARCHAR(100) NULL,
    ContentStart NVARCHAR(100) NULL,
    ContentEnd NVARCHAR(100) NULL,
    OrderStart NVARCHAR(100) NULL,
    OrderEnd NVARCHAR(100) NULL
);

DESC BrandRecord;

INSERT INTO
    BrandRecord(
        BrandID,
        BrandName,
        Createperson,
        Createdate,
        Content,
        Content1,
        BrandStart,
        BrandEnd,
        LayoutStart,
        LayoutEnd,
        ContentStart,
        ContentEnd,
        OrderStart,
        OrderEnd
    )
VALUES
    (
        "2342",
        "FHSPF ltd",
        "Mario Kareem",
        "2020-02-21",
        "FHSPF monthly records",
        "FHSPF records corresponding with the store",
        "ffj",
        "485hd",
        "Thankign clients",
        "FFF",
        "XXX",
        "Y-Y-Y",
        "X-x-x",
        "05-S"
    ),
    (
        "23653242",
        "HDGDJ ltd",
        "Kagad VR",
        "2020-05-21",
        "HDGDJ monthly records",
        "HDGDJ records corresponding with the store",
        "iuytdjd",
        "3934g5ne",
        "Thankign clients",
        "FFF",
        "XXX",
        "Y-Y-Y",
        "X-x-x",
        "05-S"
    ),
    (
        "037404",
        "Gara Jum ltd",
        "Rudi Mar",
        "2019-05-21",
        "Gara Jum monthly records",
        "Gara Jum records corresponding with the store",
        "iuytdjd",
        "3934g5ne",
        "changing some site commons",
        "HKGK",
        "KKK-KK",
        "Y-Y-Y",
        "X-x-x",
        "05-S"
    ),
    (
        "037404",
        "Juma Kumla ltd",
        "Rudi Mar",
        "2021-04-21",
        "Juma Kumla monthly records",
        "Juma Kumla records corresponding with the store",
        "iuytdjd",
        "3934g5ne",
        "changing some site commons",
        "HKGK",
        "HDKD-ODHD",
        "L-L-L",
        "X-x-x",
        "094-S"
    ),
    (
        "3987654",
        "Gara Jum ltd",
        "Rudi Mar",
        "2019-05-21",
        "Gara Jum monthly records",
        "Gara Jum records corresponding with the store",
        "iuytdjd",
        "3934g5ne",
        "changing some site commons",
        "JDPDYD",
        "L-KDD",
        "Y-S-Y",
        "X-x-x",
        "845-A"
    ),
    (
        "240404",
        "BAL Jum ltd",
        "Kyke Maeie",
        "2018-05-30",
        "BAL Jum monthly records",
        "BAL Jum records corresponding with the store",
        "iuytdjd",
        "3934g5ne",
        "changing some site commons",
        "JDPDYD",
        "L-KDD",
        "Y-S-Y",
        "X-x-x",
        "845-A"
    ),
    (
        "2jdkd2jd",
        "BAL Jum ltd",
        "Kyke Maeie",
        "2018-05-30",
        "BAL Jum monthly records",
        "BAL Jum records corresponding with the store",
        "iuytdjd",
        "3934g5ne",
        "offering gifs to the clients",
        "JDPDYD",
        "L-KDD",
        "Y-S-Y",
        "X-x-x",
        "845-A"
    ),
    (
        "037404",
        "Juma Kumla ltd",
        "Rudi Mar",
        "2021-04-21",
        "Juma Kumla monthly records",
        "Juma Kumla records corresponding with the store",
        "iuytdjd",
        "3934g5ne",
        "Promoting brand",
        "HKGK",
        "HDKD-ODHD",
        "L-L-L",
        "X-x-x",
        "203-S"
    ),
    (
        "037404",
        "Gara Jum ltd",
        "Rudi Mar",
        "2019-05-21",
        "Gara Jum monthly records",
        "Gara Jum records corresponding with the store",
        "iuytdjd",
        "3934g5ne",
        "changing some site commons",
        "HKGK",
        "KKK-KK",
        "Y-Y-Y",
        "X-x-x",
        "05-S"
    ),
    (
        "23653242",
        "HDGDJ ltd",
        "Kagad VR",
        "2020-05-21",
        "HDGDJ monthly records",
        "HDGDJ records corresponding with the store",
        "iuytdjd",
        "3934g5ne",
        "Bringing ideas on the table 43",
        "FFF",
        "XXX",
        "L-Y-Y",
        "X-x-x",
        "3947-S"
    );

CREATE TABLE tb_Approval_his(
    ID int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    log_dte DATETIME(6) NULL,
    dtl_id NVARCHAR(200) NULL,
    user_id NVARCHAR(100) NULL,
    type VARCHAR(50) NULL,
    region NVARCHAR(200) NULL,
    lang VARCHAR(100) NULL,
    translation NVARCHAR(40),
    remark NVARCHAR(40) NULL,
    status VARCHAR(50) NULL,
    isSYS NCHAR(2) NULL,
    header_id NVARCHAR(100) NULL,
    translation_old NVARCHAR(2000) NULL,
    status_old NVARCHAR(20) NULL
);

DESC tb_Approval_his;

INSERT INTO
    tb_Approval_his(
        log_dte,
        dtl_id,
        user_id,
        type,
        region,
        lang,
        translation,
        remark,
        status,
        isSYS,
        header_id,
        translation_old,
        status_old
    )
VALUES
    (
        "2020-04-20",
        "1234",
        "937",
        "Approval",
        "USA",
        "EN",
        "IND",
        "XXX",
        "true",
        "F",
        "987654321",
        "In",
        "T"
    ),
    (
        "2020-09-20",
        "8657",
        "37985",
        "Denial",
        "USA",
        "EN",
        "IND",
        "XXX",
        "true",
        "F",
        "984047",
        "In",
        "F"
    ),
    (
        "2020-04-20",
        "757",
        "7347",
        "Approval",
        "USA",
        "EN",
        "IND",
        "XXX",
        "true",
        "F",
        "87654678",
        "In",
        "T"
    ),
    (
        "2020-02-12",
        "736",
        "6547",
        "Approval",
        "French",
        "FR",
        "EN",
        "XXX",
        "False",
        "F",
        "987573",
        "fr",
        "F"
    ),
    (
        "2020-04-20",
        "9384",
        "0874",
        "Approval",
        "Armenia",
        "EN",
        "IND",
        "XXX",
        "true",
        "F",
        "958567",
        "In",
        "F"
    ),
    (
        "2020-12-25",
        "673",
        "56774",
        "Denial",
        "Russia",
        "RU",
        "FR",
        "XXX",
        "true",
        "F",
        "049857",
        "fr",
        "T"
    ),
    (
        "2020-07-20",
        "8493",
        "094",
        "Denial",
        "GGD",
        "EN",
        "IND",
        "YYY",
        "true",
        "F",
        "94749",
        "In",
        "T"
    ),
    (
        "2020-04-20",
        "1234",
        "937",
        "Approval",
        "USA",
        "EN",
        "IND",
        "XXX",
        "true",
        "F",
        "987654321",
        "In",
        "T"
    ),
    (
        "2020-09-20",
        "8657",
        "37985",
        "Denial",
        "USA",
        "EN",
        "IND",
        "XXX",
        "true",
        "F",
        "984047",
        "In",
        "F"
    ),
    (
        "2020-10-20",
        "556",
        "554",
        "Approval",
        "USA",
        "EN",
        "IND",
        "XXX",
        "true",
        "F",
        "87654678",
        "In",
        "T"
    );

CREATE TABLE tb_auto_artwork(
    id int(4) NOT NULL,
    guid_key NVARCHAR(100) NOT NULL,
    Type NVARCHAR(400) NOT NULL,
    UID NVARCHAR(400) NOT NULL,
    Other NVARCHAR(1000) NULL,
    sign NVARCHAR(400) NULL,
    Total_Page_No NVARCHAR(20) NULL,
    PNG NVARCHAR(400) NULL,
    PDF NVARCHAR(400) NULL,
    create_date DATETIME(6) NULL,
    last_updated_date DATETIME(6) NULL,
    Version NVARCHAR(20) NULL,
    Artwork_Width DECIMAL(9, 5) NULL,
    nk54n536m3n5n5bj Artwork_Height DECIMAL(9, 5) NULL,
    Order_Key NVARCHAR(100) NULL,
    Item_Key NVARCHAR(100) NULL,
    SizeMatrix_Key NVARCHAR(100) NULL,
    Artwork_Type NVARCHAR(50) NULL,
    Inkscape_Version NVARCHAR(100) NULL,
    label NVARCHAR(60) NULL,
    CONSTRAINT PK_tb_auto_artwork PRIMARY KEY (TYPE, UID)
);

DESC tb_auto_artwork;

INSERT INTO
    tb_auto_artwork
VALUES
    (
        1,
        "7896747",
        "xxxxx",
        "8393874",
        "Lorem Ipsum is simply dummy text of the printing and ty",
        "Mon+",
        "1200",
        "ffegf.png",
        "jdkdhf.pdf",
        "2021-02-23",
        "2021-09-10",
        "v1.0.1",
        32.42354,
        35.234,
        "kdkdkdkd",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v2.0.0",
        "Abstract book"
    ),
    (
        2,
        "242453",
        "XyXYXY",
        "8393874",
        "Lorem Ipsum is simply dummy text of the printing and ty",
        "Mon+",
        "1200",
        "fdggs.png",
        "jgnhg.pdf",
        "2021-02-23",
        "2021-09-10",
        "v1.0.1",
        20.42354,
        12.234,
        "kyjhgtdsfz",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v2.0.0",
        "paininting mille"
    ),
    (
        3,
        "242453",
        "XYX",
        "94742",
        "Lorem Ipsum is simply dummy text of the printing and ty",
        "Mon+",
        "1200",
        "fdggs.png",
        "jgnhg.pdf",
        "2021-02-23",
        "2021-09-10",
        "v1.0.1",
        20.42354,
        12.234,
        "kyjhgtdsfz",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v2.0.0",
        "paininting mille"
    ),
    (
        4,
        "43536",
        "XYXYXYXX",
        "76352gfds5433",
        "like Aldus PageMaker including versions of Lorem Ipsum.",
        "CHimp+",
        "kkfld",
        "kdkdld.png",
        "jgnhg.pdf",
        "2021-02-23",
        "2021-09-10",
        "v1.0.1",
        20.42354,
        12.234,
        "fdsdws",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v2.0.0",
        "paininting mille"
    ),
    (
        5,
        "7896747",
        "XXyXXy",
        "83924742",
        "Lorem Ipsum is simply dummy text of the printing and ty",
        "Mon+",
        "1200",
        "ffegf.png",
        "jdkdhf.pdf",
        "2021-02-23",
        "2021-09-10",
        "v1.0.1",
        32.42354,
        35.234,
        "kdkdkdkd",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v2.0.0",
        "Abstract book"
    ),
    (
        6,
        "242453",
        "YXYXYX",
        "83296482",
        "Lorem Ipsum is simply dummy text of the printing and ty",
        "Mon+",
        "900",
        "fdggs.png",
        "jgnhg.pdf",
        "2021-02-23",
        "2021-09-10",
        "v3.5.1",
        42.42354,
        24.234,
        "redwdwgrfwe",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v3.0.0",
        "paininting mille"
    ),
    (
        7,
        "dsfda",
        "YYYY",
        "trseaw9d87sf998",
        " unchanged. It was popularised in the 1960s",
        "L",
        "1200",
        "fdggs.png",
        "jgnhg.pdf",
        "2021-02-23",
        "2021-09-10",
        "v1.0.1",
        20.42354,
        12.234,
        "kyjhgtdsfz",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v2.0.0",
        "paininting mille"
    ),
    (
        8,
        "hfgdvfew",
        "XXX",
        "76352gfds5433",
        "like Aldus PageMaker including versions of Lorem Ipsum.",
        "fff+",
        "dqed",
        "kdkdld.png",
        "jgnhg.pdf",
        "2021-02-23",
        "2021-09-10",
        "v1.0.1",
        20.42354,
        12.234,
        "fdsdws",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v2.0.0",
        "paininting mille"
    ),
    (
        9,
        "89423757",
        "xxxxxD",
        "839387423",
        "Lorem Ipsum is simply dummy text of the printing and ty",
        "Mon+",
        "1200",
        "ffegf.png",
        "jdkdhf.pdf",
        "2021-02-23",
        "2021-09-10",
        "v1.0.1",
        32.42354,
        35.234,
        "kdkdkdkd",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v2.0.0",
        "Abstract book"
    ),
    (
        10,
        "9876423",
        "xxxxxS",
        "83938734",
        "Lorem Ipsum is simply dummy text of the printing and ty",
        "Mon+",
        "1200",
        "ffegf.png",
        "jdkdhf.pdf",
        "2021-02-23",
        "2021-09-10",
        "v1.0.1",
        32.42354,
        35.234,
        "kdkdkdkd",
        "kkkk-ddd-ll",
        "83-542-6-3kd",
        "Book",
        "v2.0.0",
        "Abstract book"
    );

CREATE TABLE tb_auto_artwork_pdf_log(
    id INT(4) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    queueUid NVARCHAR(100) NULL,
    brandName NVARCHAR(100) NULL,
    orderNo NVARCHAR(100) NULL,
    itemRef NVARCHAR(100) NULL,
    matches VARCHAR(10) NULL,
    result VARCHAR(20) NULL,
    errorMsg NVARCHAR(500) NULL,
    autoArtworkType NVARCHAR(100) NULL,
    createDate DATETIME(6) NULL,
    isSend VARCHAR(1) NULL,
    sendDate DATETIME(6) NULL,
    orderStatus NVARCHAR(100) NULL
);

DESC tb_auto_artwork_pdf_log;

INSERT INTO
    tb_auto_artwork_pdf_log (
        queueUid,
        brandName,
        orderNo,
        itemRef,
        matches,
        result,
        errorMsg,
        autoArtworkType,
        createDate,
        isSend,
        sendDate,
        orderStatus
    )
VALUES
    (
        "4949404",
        "jUM",
        "MY ORDER",
        "best item",
        "3849",
        "the output",
        "This is an error",
        "It is in work",
        "2021-04-12",
        "F",
        "2021-04-12",
        "processing"
    ),
    (
        "53653",
        "jJJJ",
        "His ORDER",
        "erro item item",
        "65325",
        "the best result",
        "This is an found error",
        "It is in work",
        "2022-04-12",
        "T",
        "2021-04-12",
        "onhold"
    ),
    (
        "84975",
        "FFF",
        "Order for error fix",
        "error revealed",
        "098475",
        "the best result",
        "This is an found error",
        "It is in work",
        "2021-05-12",
        "T",
        "2021-05-25",
        "onhold"
    ),
    (
        "9485",
        "FFF",
        "ldkld",
        "error thrown is bad",
        "098475",
        "the worst result",
        "This is an found error",
        "Got it fixed",
        "2021-05-12",
        "F",
        "2021-05-25",
        "onhold"
    ),
    (
        "737378",
        "jJJJ",
        "His ORDER",
        "erro item item",
        "65325",
        "the best result",
        "This is an found error",
        "It is in work",
        "2022-04-12",
        "T",
        "2021-04-12",
        "onhold"
    ),
    (
        "865453",
        "FFF",
        "Order for error fix",
        "error revealed",
        "098475",
        "the best result",
        "This is an found error",
        "It is in work",
        "2021-05-12",
        "T",
        "2021-05-25",
        "onhold"
    ),
    (
        "7563636",
        "FFF",
        "ldkld",
        "error thrown is bad",
        "098475",
        "the worst result",
        "This is an found error",
        "Got it fixed",
        "2021-05-12",
        "F",
        "2021-05-25",
        "onhold"
    ),
    (
        "42547875",
        "jUM",
        "MY ORDER",
        "best item",
        "3849",
        "the output",
        "This is an error",
        "It is in work",
        "2021-04-12",
        "F",
        "2021-04-12",
        "processing"
    ),
    (
        "75868",
        "jJJJ",
        "His ORDER",
        "erro item item",
        "65325",
        "the best result",
        "This is an found error",
        "It is in work",
        "2022-04-12",
        "T",
        "2021-04-12",
        "onhold"
    ),
    (
        "54574",
        "FFF",
        "Order for error fix",
        "error revealed",
        "098475",
        "the best result",
        "This is an found error",
        "It is in work",
        "2021-05-12",
        "T",
        "2021-05-25",
        "onhold"
    );

CREATE TABLE tb_AwXmlConfigDetail(
    Id int(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    ConfigMainKey NVARCHAR(100) NULL,
    FieldType NVARCHAR(100) NULL,
    Field NVARCHAR(100) NULL,
    FieldStatus NVARCHAR(100) NULL,
    FieldValue NVARCHAR(100) NULL
);

INSERT INTO
    tb_AwXmlConfigDetail (
        ConfigMainKey,
        FieldType,
        Field,
        FieldStatus,
        FieldValue
    )
VALUES
    (
        "Main key configuration",
        "field type",
        "field",
        "current field status",
        "The field value"
    ),
    (
        "THe key",
        "field type",
        "field",
        "current field status",
        "The field value"
    ),
    (
        "THe key",
        "field type",
        "field",
        "current field status",
        "The field value"
    ),
    (
        "THe key",
        "field type",
        "field",
        "current field status",
        "The field value"
    ),
    (
        "THe key",
        "field type",
        "field",
        "current field status",
        "The field value"
    ),
    (
        "THe key",
        "field type",
        "field",
        "current field status",
        "The field value"
    ),
    (
        "THe key",
        "field type",
        "field",
        "current field status",
        "The field value"
    ),
    (
        "THe key",
        "field type",
        "field",
        "current field status",
        "The field value"
    ),
    (
        "THe key",
        "field type",
        "field",
        "current field status",
        "The field value"
    );

CREATE TABLE tb_BackupRecords(
    ID INT(4) NOT NULL,
    BackupName NVARCHAR(400) NOT NULL,
    BackupTb NVARCHAR(100) NULL,
    BackupSourceTb NVARCHAR(100) NULL,
    CreateUser NVARCHAR(100) NULL,
    CreateTime DATETIME(6) NULL,
    BackupType NVARCHAR(100) NULL,
    CompareColumn NVARCHAR(100) NULL
);

DESC tb_BackupRecords;

INSERT INTO
    tb_BackupRecords
VALUES
    (
        1,
        "RESTORE",
        "users_db",
        "old_users_db",
        "La p",
        "2021-03-10",
        "initial backup",
        "email columns"
    ),
    (
        2,
        "backup2",
        "orders_db",
        "old_users_db",
        "Gersh",
        "2021-05-22",
        "initial backup",
        "orders columns"
    ),
    (
        3,
        "backup3",
        "database_1",
        "old_database",
        "User2",
        "2021-05-22",
        "initial backup",
        "db_columns"
    ),
    (
        4,
        "RESTORE",
        "users_db",
        "old_users_db",
        "La p",
        "2021-03-10",
        "initial backup",
        "email columns"
    ),
    (
        5,
        "backup4",
        "orders_db",
        "old_users_db",
        "Gersh",
        "2021-05-22",
        "initial backup",
        "orders columns"
    ),
    (
        6,
        "backup2",
        "orders_db",
        "old_users_db",
        "Gersh",
        "2021-05-22",
        "initial backup",
        "orders columns"
    ),
    (
        7,
        "backup3",
        "database_1",
        "old_database",
        "User2",
        "2021-05-22",
        "initial backup",
        "db_columns"
    ),
    (
        8,
        "RESTORE",
        "users_db",
        "old_users_db",
        "La p",
        "2021-03-10",
        "initial backup",
        "email columns"
    ),
    (
        9,
        "backup2",
        "orders_db",
        "old_users_db",
        "Gersh",
        "2021-05-22",
        "initial backup",
        "orders columns"
    ),
    (
        10,
        "backup3",
        "database_1",
        "old_database",
        "User2",
        "2021-05-22",
        "initial backup",
        "db_columns"
    );

CREATE TABLE tb_BarcodeType(
    Id INT(4) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    BarcodeType NVARCHAR(100) NULL,
    enable CHAR(1) NULL
);

DESC tb_BarcodeType;

INSERT INTO
    tb_BarcodeType (BarcodeType, enable)
VALUES
    ("95739565965", "T"),
    ("95784643057", "T"),
    ("95720547295", "F"),
    ("95718748529", "T"),
    ("95799974734", "F"),
    ("95702740479", "F"),
    ("957294649274", "F"),
    ("957264946245", "F"),
    ("957993431974", "T"),
    ("957007462944", "T");

CREATE TABLE tb_brand(
    id INT(4) NOT NULL,
    guid_key NVARCHAR(100) NOT NULL PRIMARY KEY,
    company_key NVARCHAR(100) NULL,
    brand_name NVARCHAR(100) NULL,
    display NVARCHAR(2) NULL,
    created_by NVARCHAR(100) NULL,
    created_date DATETIME(6) NULL,
    last_updated_by NVARCHAR(100) NULL,
    last_updated_date DATETIME(6) NULL,
    seqno INT(4) NULL,
    itemRef_Num INT(4) NULL,
    display_Content NVARCHAR(2) NULL,
    file_path NVARCHAR(100) NULL,
    brand_prefix NVARCHAR(100) NULL,
    display_SizeTable NVARCHAR(2) NULL,
    itemwidth NVARCHAR(100) NULL,
    translation_code NVARCHAR(100) NULL,
    content_model NVARCHAR(20) NULL,
    ItemDisplayModel INT(4) NULL,
    display_custom_content_number VARCHAR(1) NULL,
    DisplayFootIcon CHAR(1) NULL,
    AContentTitle NVARCHAR(100) NULL,
    BContentTitle NVARCHAR(100) NULL,
    CContentTitle NVARCHAR(100) NULL,
    DisplayLocationCode CHAR(1) NULL,
    CreateContentModel CHAR(1) NULL,
    AwCustomCCNumberRule NVARCHAR(100) NULL,
    WastageSwitch CHAR(1) NULL,
    WastageValue NVARCHAR(20) NULL,
    IconTextPosition NVARCHAR(100) NULL,
    DisplayAutoArtwork CHAR(1) NULL,
    ShrinkageStatu NVARCHAR(20) NULL,
    FontStyle NVARCHAR(100) NULL,
    character NVARCHAR(100) NULL,
    OrderModel NVARCHAR(4) NULL,
    BatchConfirm NVARCHAR(2) NULL,
    OrderReceiptState NVARCHAR(20) NULL,
    Erp_Code NVARCHAR(10) NULL,
    IsShowWas INT(4) NULL,
    QtyWastageValue NVARCHAR(100) NULL,
    IsQtyWas NVARCHAR(100) NULL,
    ConfirmOrderMode NVARCHAR(20) NULL,
    ContentMsgShowModel CHAR(1) NULL,
    PartMsg NVARCHAR(1000) NULL,
    ContentMsg NVARCHAR(1000) NULL,
    PercentMsg NVARCHAR(1000) NULL,
    CareMsg NVARCHAR(1000) NULL,
    IconMsg NVARCHAR(1000) NULL,
    EdiFieldMappingKey NVARCHAR(100) NULL,
    ItemRefSeqNo NVARCHAR(100) NULL,
    IsDataSync CHAR(1) NULL,
    IsAW CHAR(1) NULL,
    ApproverEmailAddress NVARCHAR(4000) NULL,
    IsMaximize NVARCHAR(2) NULL,
    IsAllEdit NVARCHAR(2) NULL,
    qr_rengen_at NVARCHAR(20) NULL,
    qr_rengen_url CHAR(1) NULL,
    NewOrderButton CHAR(1) NULL,
    CategoryStatus CHAR(1) NULL,
    Company_Preix NVARCHAR(100) NULL,
    DisablePercentage CHAR(1) NULL,
    retailer_code NVARCHAR(400) NULL,
    MyOrderConfirm VARCHAR(1) NULL,
    IsShowExpectedDate CHAR(1) NULL,
    IsDraftAllowZeroQty CHAR(1) NULL,
    BrandCategory_guid_key NVARCHAR(100) NULL,
    IsSeparateLang CHAR(1) NULL,
    RePrintNum INT(4) NULL,
    AllowCareDuplicate CHAR(1) NULL,
    MaxCareNum INT(4) NULL,
    MinCareNum INT(4) NULL,
    MappingCode NVARCHAR(100) NULL,
    RegionCode NVARCHAR(100) NULL,
    IsEdiSizeMapping NVARCHAR(2) NULL,
    PriceState NVARCHAR(2) NULL,
    AutoArtworkPDFModel NVARCHAR(60) NULL,
    IsLeanArtWork CHAR(1) NULL,
    QRCodeURL NVARCHAR(1000) NULL,
    QRCodeGroup NVARCHAR(100) NULL,
    brand_url NVARCHAR(1000) NULL,
    IsCopyQty VARCHAR(1) NULL,
    IsSizeTableModify NVARCHAR(2) NULL,
    IsHideRev VARCHAR(1) NULL,
    IsIntegrationXml NVARCHAR(2) NULL,
    IsShowBarcode CHAR(1) NULL
);

CREATE TABLE tb_Brand_Custom_Translation_Model(
    id int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brandid NVARCHAR(100) NULL,
    custom_model NVARCHAR(800) NULL,
    custom_content_sep VARCHAR(10) NULL,
    custom_part_sep VARCHAR(10) NULL,
    custom_care_sep VARCHAR(10) NULL,
    PreviewMode NVARCHAR(40) NULL,
    Part_Part NVARCHAR(10),
    Part_Content_sep NVARCHAR(40) NULL,
    COO_sep VARCHAR(10) NULL
);

DESC tb_Brand_Custom_Translation_Model;

INSERT INTO
    tb_Brand_Custom_Translation_Model(
        brandid,
        custom_model,
        custom_content_sep,
        custom_part_sep,
        custom_care_sep,
        PreviewMode,
        Part_Part,
        Part_Content_sep,
        COO_sep
    )
VALUES
    (
        "484-43f-fw4-428-43h",
        "Lorem Ipsum is simply dummy text of the printing and typesetting ",
        "Lorem",
        "Good",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "combined"
    ),
    (
        "54t-abd-dd4-428-43h",
        "industry. Lorem Ipsum has been the industry's standard dummy text ever",
        "Lorem",
        "Good",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "combined"
    ),
    (
        "fs5-ab4-fd4-428-543",
        "since the 1500s, when an unknown printer took a galley of type and",
        "Lorem",
        "Best",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "combined"
    ),
    (
        "6df-64h-97f-428-543",
        "like Aldus PageMaker including versions of Lorem Ipsum.",
        "Lorem",
        "Best",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "combined"
    ),
    (
        "6df-re5-97f-th4-74s",
        "like Aldus PageMaker including versions of Lorem Ipsum.",
        "Lorem",
        "Best",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "combined"
    ),
    (
        "67f-re5-97f-th4-74s",
        "like Aldus PageMaker including versions of Lorem Ipsum.",
        "Lorem",
        "Best",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "discrete"
    ),
    (
        "54t-abd-dd4-428-43h",
        "industry. Lorem Ipsum has been the industry's standard dummy text ever",
        "Lorem",
        "Good",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "combined"
    ),
    (
        "fs5-ab4-fd4-428-543",
        "since the 1500s, when an unknown printer took a galley of type and",
        "Lorem",
        "Best",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "combined"
    ),
    (
        "6df-re5-97f-th4-74s",
        "like Aldus PageMaker including versions of Lorem Ipsum.",
        "Lorem",
        "Best",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "combined"
    ),
    (
        "67f-re5-97f-th4-74s",
        "like Aldus PageMaker including versions of Lorem Ipsum.",
        "Lorem",
        "Best",
        "Furh",
        "Set",
        "2 Parts",
        "line",
        "discrete"
    );

CREATE TABLE tb_Brand_Shrinkage_Translation_Model(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brandid NVARCHAR(50) NULL,
    One NVARCHAR(10) NULL,
    Two NVARCHAR(10) NULL,
    Three NVARCHAR(10) NULL,
    Four NVARCHAR(10) NULL,
    Shrinkage_part_sep NVARCHAR(10) NULL,
    Five NVARCHAR(10) NULL
);

DESC tb_Brand_Shrinkage_Translation_Model
INSERT INTO
    tb_Brand_Shrinkage_Translation_Model(
        brandid,
        One,
        Two,
        Three,
        Four,
        Shrinkage_part_sep,
        Five
    )
VALUES
    (
        "e8c439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Left",
        "Five"
    ),
    (
        "d30d439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Right",
        "Five"
    ),
    (
        "d47d439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Top",
        "Five"
    ),
    (
        "c836439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Bottom",
        "Five"
    ),
    (
        "e8c439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Left",
        "Five"
    ),
    (
        "d30d439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Right",
        "Five"
    ),
    (
        "d47d439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Top",
        "Five"
    ),
    (
        "c836439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Bottom",
        "Five"
    ),
    (
        "d47d439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Top",
        "Five"
    ),
    (
        "c836439c4-2bc0-4304-8053-e818071b5293",
        "one",
        "Two",
        "Three",
        "Four",
        "Bottom",
        "Five"
    );

CREATE TABLE tb_BrandCustomRemarkDetail(
    BrandId NVARCHAR(100) NULL,
    FieldType NVARCHAR(100) NULL,
    DataField NVARCHAR(100) NULL,
    SeqValue INT(4) NULL,
    SeqNo INT(4) NULL
);

DESC TABLE tb_BrandCustomRemarkDetail;

INSERT INTO
    tb_BrandCustomRemarkDetail (
        BrandId,
        FieldType,
        DataField,
        SeqValue,
        SeqNo
    )
VALUES
    (
        "c836439c4-2bc0-4304-8053-e818071b5293",
        "Number",
        "49464",
        3098734,
        "42"
    ),
    (
        "e6546439c4-2bc0-4304-8053-e818071b5293",
        "Number",
        "49464",
        1234098,
        42
    ),
    (
        "d456439c4-2bc0-4304-8053-e818071b5293",
        "Number",
        "49464",
        765435,
        63
    ),
    (
        "g526439c4-2bc0-4304-8053-e818071b5293",
        "String",
        "Lorem",
        436254,
        15
    ),
    (
        "g456439c4-2bc0-4304-8053-e818071b5293",
        "String",
        "Lorem",
        92743,
        534
    ),
    (
        "c836439c4-2bc0-4304-8053-e818071b5293",
        "Number",
        "49464",
        3098734,
        "42"
    ),
    (
        "e6546439c4-2bc0-4304-8053-e818071b5293",
        "Number",
        "49464",
        1234098,
        42
    ),
    (
        "d456439c4-2bc0-4304-8053-e818071b5293",
        "Number",
        "49464",
        765435,
        63
    ),
    (
        "g526439c4-2bc0-4304-8053-e818071b5293",
        "String",
        "Lorem",
        436254,
        15
    ),
    (
        "g456439c4-2bc0-4304-8053-e818071b5293",
        "String",
        "Lorem",
        92743,
        534
    );

CREATE TABLE tb_BraxEdiCsv(
    GRUPPE TEXT NULL,
    SORT TEXT NULL,
    PRINTORDER TEXT NULL,
    STUECK TEXT NULL,
    PRUEFNR TEXT NULL,
    SVERS TEXT NULL,
    PARTIE TEXT NULL,
    SW TEXT NULL,
    MADEIN TEXT NULL,
    MADEINUS TEXT NULL,
    CANR TEXT NULL,
    ADRESSE TEXT NULL,
    SCHN6 TEXT NULL,
    ARTDE TEXT NULL,
    FORM8 TEXT NULL,
    TEXT1 TEXT NULL,
    TEXT_2 TEXT NULL,
    TEXT_3 TEXT NULL,
    STRETCH TEXT NULL,
    NOSDEPOT TEXT NULL,
    FKB TEXT NULL,
    KZVTEILNR TEXT NULL,
    TEILNR TEXT NULL,
    EANNR TEXT NULL,
    GROESSE_D TEXT NULL,
    GROESSE_GB TEXT NULL,
    GROESSE_US TEXT NULL,
    GROESSE_FB TEXT NULL,
    MODELLNAME TEXT NULL,
    GROESSE TEXT NULL,
    GRTEXT TEXT NULL,
    LAENGE TEXT NULL,
    P_EU_1 TEXT NULL,
    P_EU_2 TEXT NULL,
    P_EU_3 TEXT NULL,
    P_EU_4 TEXT NULL,
    P_EU_5 TEXT NULL,
    P_EU_6 TEXT NULL,
    P_EU_7 TEXT NULL,
    P_EU_8 TEXT NULL,
    P_US_1 TEXT NULL,
    P_US_2 TEXT NULL,
    P_US_3 TEXT NULL,
    P_US_4 TEXT NULL,
    P_US_5 TEXT NULL,
    PREISBEZ TEXT NULL,
    UVP_D TEXT NULL,
    UVP_B TEXT NULL,
    UVP_CH TEXT NULL,
    UVP_DK TEXT NULL,
    WAEHRUNG TEXT NULL,
    WAEHRUNG2 TEXT NULL,
    WAEHRUNG3 TEXT NULL,
    WAEHRUNG4 TEXT NULL,
    WAEHRUNGS TEXT NULL,
    LANDBEZ TEXT NULL,
    LANDBEZ2 TEXT NULL,
    LANDBEZ3 TEXT NULL,
    LANDBEZ4 TEXT NULL,
    LANDBEZ5 TEXT NULL,
    LANDBEZ6 TEXT NULL,
    LANDBEZ7 TEXT NULL,
    LANDBEZ8 TEXT NULL,
    HINWEIS TEXT NULL,
    HINWEIS2 TEXT NULL,
    OUTDOOR TEXT NULL,
    PROD2 TEXT NULL,
    SAISON TEXT NULL,
    KONZERN TEXT NULL,
    KONZERNN TEXT NULL,
    AUFTRAG TEXT NULL,
    GESAMTSTK TEXT NULL,
    KDNAUFTRAG TEXT NULL,
    KDNARTIKEL TEXT NULL,
    KOMMENTAR TEXT NULL,
    PRINTER TEXT NULL,
    TRANSTEXT TEXT NULL,
    FORMAT TEXT NULL,
    FTYPE TEXT NULL,
    PRIO TEXT NULL,
    FERTIGBIS TEXT NULL,
    STATUS TEXT NULL,
    PDF TEXT NULL,
    D_ERROR TEXT NULL,
    S_ERROR TEXT NULL,
    O_ERROR TEXT NULL,
    P_ERROR TEXT NULL,
    PR_ERROR TEXT NULL,
    SQL_ERROR TEXT NULL,
    ANG_VON TEXT NULL,
    ANG_AM TEXT NULL,
    ANG_UM TEXT NULL,
    GED_VON TEXT NULL,
    GED_AM TEXT NULL,
    GED_UM TEXT NULL,
    SupplierCode TEXT NULL,
    Flash_Mark TEXT NULL,
    PLM_number TEXT NULL,
    Item_number TEXT NULL,
    BrandId NVARCHAR(100) NULL,
    OrderKey NVARCHAR(100) NULL,
    FileName NVARCHAR(400) NULL,
    FileCreateTime DATETIME(6) NULL,
    CreateTime DATETIME(6) NULL,
    SeqNo INT(4) NULL,
    CsvDefaultSeqNo INT(4) NULL,
    QR NVARCHAR(400) NULL
);

DESC tb_BraxEdiCsv;

INSERT INTO
    tb_BraxEdiCsv(
        GRUPPE,
        SORT,
        PRINTORDER,
        STUECK,
        PRUEFNR,
        SVERS,
        PARTIE,
        SW,
        MADEIN,
        MADEINUS,
        CANR,
        ADRESSE,
        SCHN6,
        ARTDE,
        FORM8,
        TEXT1,
        TEXT_2,
        TEXT_3,
        STRETCH,
        NOSDEPOT,
        FKB,
        KZVTEILNR,
        TEILNR,
        EANNR,
        GROESSE_D,
        GROESSE_GB,
        GROESSE_US,
        GROESSE_FB,
        MODELLNAME,
        GROESSE,
        GRTEXT,
        LAENGE,
        P_EU_1,
        P_EU_2,
        P_EU_3,
        P_EU_4,
        P_EU_5,
        P_EU_6,
        P_EU_7,
        P_EU_8,
        P_US_1,
        P_US_2,
        P_US_3,
        P_US_4,
        P_US_5,
        PREISBEZ,
        UVP_D,
        UVP_B,
        UVP_CH,
        UVP_DK,
        WAEHRUNG,
        WAEHRUNG2,
        WAEHRUNG3,
        WAEHRUNG4,
        WAEHRUNGS,
        LANDBEZ,
        LANDBEZ2,
        LANDBEZ3,
        LANDBEZ4,
        LANDBEZ5,
        LANDBEZ6,
        LANDBEZ7,
        LANDBEZ8,
        HINWEIS,
        HINWEIS2,
        OUTDOOR,
        PROD2,
        SAISON,
        KONZERN,
        KONZERNN,
        AUFTRAG,
        GESAMTSTK,
        KDNAUFTRAG,
        KDNARTIKEL,
        KOMMENTAR,
        PRINTER,
        TRANSTEXT,
        FORMAT,
        FTYPE,
        PRIO,
        FERTIGBIS,
        STATUS,
        PDF,
        D_ERROR,
        S_ERROR,
        O_ERROR,
        P_ERROR,
        PR_ERROR,
        SQL_ERROR,
        ANG_VON,
        ANG_AM,
        ANG_UM,
        GED_VON,
        GED_AM,
        GED_UM,
        SupplierCode,
        Flash_Mark,
        PLM_number,
        Item_number,
        BrandId,
        OrderKey,
        FileName,
        FileCreateTime,
        CreateTime,
        SeqNo,
        CsvDefaultSeqNo,
        QR
    )
VALUES
    (
        "Group 1",
        "ascend",
        "PRINTORDER",
        "STUECK",
        "PRUEFNR",
        "SVERS",
        "PARTIE",
        "SW",
        "MADEIN",
        "MADEINUS",
        "CANR",
        "ADRESSE",
        "SCHN6",
        "ARTDE",
        "FORM8",
        "TEXT1",
        "TEXT_2",
        "TEXT_3",
        "STRETCH",
        "NOSDEPOT",
        "FKB",
        "KZVTEILNR",
        "TEILNR",
        "EANNR",
        "GROESSE_D",
        "GROESSE_GB",
        "GROESSE_US",
        "GROESSE_FB",
        "MODELLNAME",
        "GROESSE",
        "GRTEXT",
        "LAENGE",
        "P_EU_1",
        "P_EU_2",
        "P_EU_3",
        "P_EU_4",
        "P_EU_5",
        "P_EU_6",
        "P_EU_7",
        "P_EU_8",
        "P_US_1",
        "P_US_2",
        "P_US_3",
        "P_US_4",
        "P_US_5",
        "PREISBEZ",
        "UVP_D",
        "UVP_B",
        "UVP_CH",
        "UVP_DK",
        "WAEHRUNG",
        "WAEHRUNG2",
        "WAEHRUNG3",
        "WAEHRUNG4",
        "WAEHRUNGS",
        "LANDBEZ",
        "LANDBEZ2",
        "LANDBEZ3",
        "LANDBEZ4",
        "LANDBEZ5",
        "LANDBEZ6",
        "LANDBEZ7",
        "LANDBEZ8",
        "HINWEIS",
        "HINWEIS2",
        "OUTDOOR",
        "PROD2",
        "SAISON",
        "KONZERN",
        "KONZERNN",
        "AUFTRAG",
        "GESAMTSTK",
        "KDNAUFTRAG",
        "KDNARTIKEL",
        "KOMMENTAR",
        "PRINTER",
        "TRANSTEXT",
        "FORMAT",
        "FTYPE",
        "PRIO",
        "FERTIGBIS",
        "STATUS",
        "PDF",
        "D_ERROR",
        "S_ERROR",
        "O_ERROR",
        "P_ERROR",
        "PR_ERROR",
        "SQL_ERROR",
        "ANG_VON",
        "ANG_AM",
        "ANG_UM",
        "GED_VON",
        "GED_AM",
        "GED_UM",
        "SupplierCode",
        "Flash_Mark",
        "PLM_number",
        "Item_number",
        "BrandId",
        "OrderKey",
        "FileName",
        "2021-08-18",
        "2021-01-23",
        14,
        10,
        "QR"
    ),
    (
        "Group 2",
        "descend",
        "PRINTORDER2",
        "STUECK2",
        "PRUEFNR2",
        "SVERS2",
        "PARTIE2",
        "SW2",
        "MADEIN2",
        "MADEINUS2",
        "CANR2",
        "ADRESSE2",
        "SCHN62",
        "ARTDE2",
        "FORM82",
        "TEXT12",
        "TEXT_2",
        "TEXT_32",
        "STRETCH2",
        "NOSDEPOT2",
        "FKB22",
        "KZVTEILNR2",
        "TEILNR2",
        "EANNR2",
        "GROESSE_D",
        "GROESSE_GB2",
        "GROESSE_US2",
        "GROESSE_FB2",
        "MODELLNAME2",
        "GROESSE",
        "GRTEXT",
        "LAENGE",
        "P_EU_1",
        "P_EU_2",
        "P_EU_3",
        "P_EU_4",
        "P_EU_5",
        "P_EU_6",
        "P_EU_7",
        "P_EU_8",
        "P_US_1",
        "P_US_2",
        "P_US_3",
        "P_US_4",
        "P_US_5",
        "PREISBEZ",
        "UVP_D",
        "UVP_B",
        "UVP_CH",
        "UVP_DK",
        "WAEHRUNG",
        "WAEHRUNG2",
        "WAEHRUNG3",
        "WAEHRUNG4",
        "WAEHRUNGS",
        "LANDBEZ",
        "LANDBEZ2",
        "LANDBEZ3",
        "LANDBEZ4",
        "LANDBEZ5",
        "LANDBEZ6",
        "LANDBEZ7",
        "LANDBEZ8",
        "HINWEIS",
        "HINWEIS2",
        "OUTDOOR",
        "PROD2",
        "SAISON",
        "KONZERN2",
        "KONZERNN2",
        "AUFTRAG2",
        "GESAMTSTK2",
        "KDNAUFTRAG2",
        "KDNARTIKEL2",
        "KOMMENTAR2",
        "PRINTE2R",
        "TRANSTEX2T",
        "FORMAT2",
        "FTYPE2",
        "PRIO2",
        "FERTIGBIS22",
        "STATUS",
        "PDF",
        "D_ERROR",
        "S_ERROR",
        "O_ERROR",
        "P_ERROR",
        "PR_ERROR",
        "SQL_ERROR",
        "ANG_VON",
        "ANG_AM",
        "ANG_UM",
        "GED_VON",
        "GED_AM",
        "GED_UM",
        "SupplierCode",
        "Flash_Mark",
        "PLM_number",
        "Item_number",
        "BrandId",
        "OrderKey",
        "FileName",
        "2021-05-10",
        "2021-09-13",
        5,
        8,
        "QR"
    ),
    (
        "Group 3",
        "ascend",
        "PRINTORDER3",
        "STUECK3",
        "PRUEFNR3",
        "SVERS3",
        "PARTIE3",
        "SW3",
        "MADEIN3",
        "MADEINUS3",
        "CANR3",
        "ADRESSE3",
        "SCHN6",
        "ARTDE3",
        "FORM83",
        "TEXT1",
        "TEXT_2",
        "TEXT_3",
        "STRETCH3",
        "NOSDEPOT3",
        "FKB3",
        "KZVTEILNR3",
        "TEILNR3",
        "EANNR3",
        "GROESSE_D3",
        "GROESSE_GB33",
        "GROESSE_US3",
        "GROESSE_FB3",
        "MODELLNAME33",
        "GROESSE3",
        "GRTEXT33",
        "LAENGE3",
        "P_EU_1",
        "P_EU_2",
        "P_EU_3",
        "P_EU_4",
        "P_EU_5",
        "P_EU_6",
        "P_EU_7",
        "P_EU_8",
        "P_US_1",
        "P_US_2",
        "P_US_3",
        "P_US_4",
        "P_US_5",
        "PREISBEZ",
        "UVP_D",
        "UVP_B",
        "UVP_CH",
        "UVP_DK",
        "WAEHRUNG",
        "WAEHRUNG2",
        "WAEHRUNG3",
        "WAEHRUNG4",
        "WAEHRUNGS",
        "LANDBEZ",
        "LANDBEZ2",
        "LANDBEZ3",
        "LANDBEZ4",
        "LANDBEZ5",
        "LANDBEZ6",
        "LANDBEZ7",
        "LANDBEZ8",
        "HINWEIS",
        "HINWEIS2",
        "OUTDOOR",
        "PROD2",
        "SAISON3",
        "KONZERN3",
        "KONZERNN3",
        "AUFTRAG3",
        "GESAMTSTK3",
        "KDNAUFTRAG3",
        "KDNARTIKEL3",
        "KOMMENTAR3",
        "PRINTER3",
        "TRANSTEXT3",
        "FORMAT",
        "FTYPE3",
        "PRIO3",
        "FERTIGBIS3",
        "STATUS3",
        "PDF3",
        "D_ERROR3",
        "S_ERROR33",
        "O_ERROR3",
        "P_ERROR3",
        "PR_ERROR3",
        "SQL_ERRO3",
        "ANG_VON3",
        "ANG_AM3",
        "ANG_UM3",
        "GED_VON3",
        "GED_AM3",
        "GED_UM3",
        "SupplierCode3",
        "Flash_Mark3",
        "PLM_number",
        "Item_number",
        "BrandId3",
        "OrderKey3",
        "FileName3",
        "2021-08-18",
        "2021-01-23",
        14,
        10,
        "QR"
    );

CREATE TABLE tb_Care_dtl_error(
    id INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    care_key NVARCHAR(100) NULL,
    CareItem_key NVARCHAR(100) NULL,
    care NVARCHAR(1000) NULL,
    Cont_key NVARCHAR(100) NULL,
    seqno INT(4) NULL,
    errormsg NVARCHAR(100) NULL
);

DESC tb_Care_dtl_error;

INSERT INTO
    tb_Care_dtl_error(
        care_key,
        CareItem_key,
        care,
        Cont_key,
        seqno,
        errormsg
    )
VALUES
    (
        "e8c439c4-2bc0-9482-8053-e818071b5293",
        "d24439c4-2bc0-4304-8934-d938071b5293",
        "care 1",
        "f8c439c4-2bc0-4304-9486-f818071b5293",
        3,
        "Lorem Ipsum is simply dummy text of the printing and typesetting "
    ),
    (
        "g34539c4-5kf0-9482-8053-g462071b5293",
        "d24439c4-2bc0-4304-8934-d938071b5293",
        "care 1",
        "f8c439c4-5kf0-4352-066-f818071b5293",
        9485,
        "industry. Lorem Ipsum has been the industry's standard dummy text ever 
"
    ),
    (
        "f435f326-2bc0-9482-8053-f423471b5293",
        "d24439c4-2bc0-4304-8934-d938071b5293",
        "care 1",
        "k44636-2bc0-4304-5246-ss5371b5293",
        4359,
        "like Aldus PageMaker including versions of Lorem Ipsum."
    ),
    (
        "s9043a32l-2bc0-3593-3308-f8s7f8as6h8",
        "d24439c4-2bc0-5365-3368-d938071b5293",
        "care 1",
        "k44636-7aa-4304-5246-ss5371b5293",
        9549,
        " unchanged. It was popularised in the 1960s with the release of Letraset sheets 
"
    ),
    (
        "s9043a32l-2bc0-3593-3308-f8s7f8as6h8",
        "d24439c4-2bc0-5365-3368-d938071b5293",
        "care 1",
        "g0g8a8d-9c4-4242-5246-ss5371b5293",
        7367,
        " scrambled it to make a type specimen book. It has survived not only five"
    ),
    (
        "e8c439c4-2bc0-9482-8053-e818071b5293",
        "d24439c4-2bc0-4304-8934-d938071b5293",
        "care 1",
        "f8c439c4-2bc0-4304-9486-f818071b5293",
        3,
        "Lorem Ipsum is simply dummy text of the printing and typesetting "
    ),
    (
        "g34539c4-5kf0-9482-8053-g462071b5293",
        "d24439c4-2bc0-4304-8934-d938071b5293",
        "care 1",
        "f8c439c4-5kf0-4352-066-f818071b5293",
        9485,
        "industry. Lorem Ipsum has been the industry's standard dummy text ever 
"
    ),
    (
        "f435f326-2bc0-9482-8053-f423471b5293",
        "d24439c4-2bc0-4304-8934-d938071b5293",
        "care 1",
        "k44636-2bc0-4304-5246-ss5371b5293",
        4359,
        "like Aldus PageMaker including versions of Lorem Ipsum."
    ),
    (
        "s9043a32l-2bc0-3593-3308-f8s7f8as6h8",
        "d24439c4-2bc0-5365-3368-d938071b5293",
        "care 1",
        "k44636-7aa-4304-5246-ss5371b5293",
        9549,
        " unchanged. It was popularised in the 1960s with the release of Letraset sheets 
"
    ),
    (
        "s9043a32l-2bc0-3593-3308-f8s7f8as6h8",
        "d24439c4-2bc0-5365-3368-d938071b5293",
        "care 1",
        "g0g8a8d-9c4-4242-5246-ss5371b5293",
        7367,
        " scrambled it to make a type specimen book. It has survived not only five"
    );

CREATE TABLE tb_CareDtlEDI
(
    id INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    care_key NVARCHAR(100) NULL,
    CareItem_key NVARCHAR(100) NULL,
    Cont_key NVARCHAR(100) NULL,
    seqno INT(4) NULL
);

DESC tb_CareDtlEDI;

INSERT INTO tb_CareDtlEDI
(
    care_key,
    CareItem_key,
    Cont_key,
    seqno
)
VALUES
(
    "43243525",
    "item_32423",
    "content-323452",
    23
),
(
    "5364356",
    "item_425435",
    "content-323452",
    23
),
(
    "6234524",
    "item_23432",
    "content-323452",
    45
),
(
    "65365463",
    "item_23432",
    "content-323452",
    12
),
(
    "43452533",
    "item_23432",
    "content-323452",
    12
),
(
    "624525343",
    "item_23432",
    "content-323452",
    24
),
(
    "43243525",
    "item_23432",
    "content-323452",
    7
),
(
    "43243525",
    "item_23432",
    "content-323452",
    12
),
(
    "25242543",
    "item_23432",
    "content-323452",
    64
),
(
    "43243525",
    "item_32423",
    "content-323452",
    23
),
(
    "5364356",
    "item_425435",
    "content-323452",
    23
),
(
    "6234524",
    "item_23432",
    "content-323452",
    45
),
(
    "65365463",
    "item_23432",
    "content-323452",
    12
),
(
    "43452533",
    "item_23432",
    "content-323452",
    12
),
(
    "624525343",
    "item_23432",
    "content-323452",
    24
),
(
    "43243525",
    "item_23432",
    "content-323452",
    7
),
(
    "43243525",
    "item_23432",
    "content-323452",
    12
),
(
    "25242543",
    "item_23432",
    "content-323452",
    64
);

CREATE TABLE tb_CilentUploadError
(
    ID INT(4) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    created_date DATETIME(6) NULL,
    brand_name NVARCHAR(400) NULL,
    type NVARCHAR(4000) NULL,
    ErrorMsg NVARCHAR(1000) NULL,
    ClientCode NVARCHAR(100) NULL
);

DESC tb_CilentUploadError;

INSERT INTO tb_CilentUploadError
(
    created_date,
    brand_name,
    type,
    ErrorMsg,
    ClientCode
)
VALUES
(
    "2022-04-04 20:04:06",
    "Gucci",
    " upload a file in the wrong format",
    "Too much size of uploaded doc",
    "53562453"
),
(
    "2022-07-04 20:04:06",
    "BMW",
    "Upload Error",
    "Too much size of uploaded doc",
    "5623453"
),
(
    "2022-04-04 20:04:06",
    "Tesla",
    "Upload Error",
    "Make sure you're using a supported file type",
    "345345345"
),
(
    "2022-04-04 20:04:06",
    "Tesla",
    "Upload Error",
    "Too much size of uploaded doc",
    "345345345"
),
(
    "2022-04-04 20:04:06",
    "BMW",
    "Upload Error",
    "You can also try changing your codecs or editing software.doc",
    "5245353"
),
(
    "2022-04-04 20:04:06",
    "Gucci",
    "Upload Error",
    "Too much size of uploaded doc",
    "345345345"
),
(
    "2022-04-04 20:04:06",
    "Tesla",
    "Upload Error",
    "Too much size of uploaded doc",
    "345345345"
),
(
    "2022-04-04 20:04:06",
    "Tesla",
    "Upload Error",
    "Too much size of uploaded doc",
    "345345345"
),
(
    "2022-04-04 20:04:06",
    "Tesla",
    "Upload Error",
    "Too much size of uploaded doc",
    "345345345"
);

CREATE TABLE tb_client_upload_error
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    client_code NVARCHAR(100) NULL,
    client_name NVARCHAR(200) NULL,
    login_id NVARCHAR(100) NULL,
    password NVARCHAR(100) NULL,
    clotex_cs_email NVARCHAR(200) NULL,
    brand_email NVARCHAR(200) NULL,
    erp NVARCHAR(40) NULL,
    erp_customer_no NVARCHAR(100) NULL,
    client_email NVARCHAR(200) NULL,
    brand_guid NVARCHAR(200) NULL,
    company_guid NVARCHAR(200) NULL,
    created_date DATETIME(6) NULL,
    created_by  NVARCHAR(100) NULL,
    lastsavedate  DATETIME(6) NULL,
    lastsaveby NVARCHAR(100) NULL,
    msg NVARCHAR(100) NULL
);

DESC tb_client_upload_error;

INSERT INTO tb_client_upload_error
(
    client_code,
    client_name,
    login_id,
    password,
    clotex_cs_email,
    brand_email,
    erp,
    erp_customer_no,
    client_email,
    brand_guid,
    company_guid,
    created_date,
    created_by,
    lastsavedate,
    lastsaveby,
    msg
)
VALUES
(
    "345235345",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
),
(
    "74235235",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
),
(
    "84252333",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
),
(
    "364253534",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
),
(
    "72452355",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
),
(
    "345235345",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
),
(
    "74235235",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
),
(
    "84252333",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
),
(
    "364253534",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
),
(
    "72452355",
    "Tesla ltd",
    "6245235",
    "pass@123",
    "example@gmail.com",
    "tesla@info.co",
    "erp content",
    "435624532534",
    "client@gmail.com",
    "35345253",
    "34523434",
    "2022-04-05 12:05:05",
    "34535353",
    "2022-06-05 12:05:05",
    "34525454",
    "Check order details first"
);

CREATE TABLE tb_Color
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    color_Key NVARCHAR(100) NULL,
    color NVARCHAR(100) NULL,
    brandid NVARCHAR(100) NULL
);

DESC tb_Color;

INSERT INTO tb_Color
(
    color_Key,
    color,
    brandid
)
VALUES
(
    "6245245",
    "VIOLET",
    "3425235"
),
(
    "6245245",
    "BLUE",
    "3425235"
),
(
    "6245245",
    "GREEN",
    "3425235"
),
(
    "6245245",
    "BLUE",
    "3425235"
),
(
    "6245245",
    "VIOLET",
    "3425235"
),
(
    "6245245",
    "GREEN",
    "3425235"
),
(
    "6245245",
    "VIOLET",
    "3425235"
),
(
    "6245245",
    "BLUE",
    "3425235"
),
(
    "6245245",
    "GREEN",
    "3425235"
),
(
    "6245245",
    "BLUE",
    "3425235"
),
(
    "6245245",
    "VIOLET",
    "3425235"
),
(
    "6245245",
    "GREEN",
    "3425235"
);


CREATE TABLE tb_color_Temp
(
    ID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    color NVARCHAR(100) NULL,
    country NVARCHAR(100) NULL
);

DESC tb_color_Temp;

INSERT INTO tb_color_Temp
(
    color,
    country
)
VALUES
(
    "BLUE",
    "INDIA"
),
(
    "GREEN",
    "GHANA"
),
(
    "YELLOW",
    "SOUTH AFRICA"
),
(
    "BLUE",
    "RWANDA"
),
(
    "RED",
    "RUSSIA"
),
(
    "BLUE",
    "RWANDA"
),
(
    "BLUE",
    "INDIA"
),
(
    "GREEN",
    "GHANA"
),
(
    "YELLOW",
    "SOUTH AFRICA"
),
(
    "BLUE",
    "RWANDA"
),
(
    "RED",
    "RUSSIA"
),
(
    "BLUE",
    "RWANDA"
);

CREATE TABLE tb_company
(
    id INT(4) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    guid_key NVARCHAR(100) NULL,
    group_Name NVARCHAR(600) NULL,
    display NVARCHAR(2) NULL,
    created_by NVARCHAR(100) NULL,
    created_date DATETIME(6) NULL,
    last_updated_by NVARCHAR(100) NULL,
    last_updated_date DATETIME(6) NULL,
    seqno INT(4) NULL,
    group_code NVARCHAR(400) NULL,
    file_path NVARCHAR(100) NULL,
    BrandDisplayRows INT(4) NULL,
    IsShowButtons CHAR(1) NULL
);

DESC tb_company;

INSERT INTO tb_company
(
    guid_key,
    group_Name,
    display,
    created_by,
    created_date,
    last_updated_by,
    last_updated_date,
    seqno,
    group_code,
    file_path,
    BrandDisplayRows,
    IsShowButtons
)
VALUES
(
    "254325435",
    "NATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    23,
    "GR_034543",
    "/test.jpg",
    43,
    'Y'
),
(
    "254325435",
    "MULTINATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    623,
    "GR_034543",
    "/test.jpg",
    64,
    'Y'
),
(
    "254325435",
    "NATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    323,
    "GR_034543",
    "/test.jpg",
    423,
    'Y'
),
(
    "254325435",
    "NATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    3134,
    "GR_034543",
    "/test.jpg",
    43,
    'Y'
),
(
    "254325435",
    "MULTINATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    123,
    "GR_034543",
    "/test.jpg",
    43,
    'Y'
),
(
    "254325435",
    "NATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    23,
    "GR_034543",
    "/test.jpg",
    43,
    'Y'
),
(
    "254325435",
    "MULTINATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    623,
    "GR_034543",
    "/test.jpg",
    64,
    'Y'
),
(
    "254325435",
    "NATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    323,
    "GR_034543",
    "/test.jpg",
    423,
    'Y'
),
(
    "254325435",
    "NATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    3134,
    "GR_034543",
    "/test.jpg",
    43,
    'Y'
),
(
    "254325435",
    "MULTINATIONAL",
    "Y",
    "556365436",
    "2022-04-05 12:05:05",
    "432543554",
    "2022-04-05 12:05:05",
    123,
    "GR_034543",
    "/test.jpg",
    43,
    'Y'
);

CREATE TABLE tb_content_dtl
(
    id INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    guid_key NVARCHAR(100) NULL,
    content_key NVARCHAR(100) NULL,
    Part_key NVARCHAR(100) NULL,
    Cont_key NVARCHAR(100) NULL,
    ENPercent NVARCHAR(20) NULL,
    seqNo INT(4) NULL,
    IsDefaultContent VARCHAR(2) NULL
);

DESC tb_content_dtl;

INSERT INTO tb_content_dtl
(
    guid_key,
    content_key,
    Part_key,
    Cont_key,
    ENPercent,
    seqNo,
    IsDefaultContent
)
VALUES
(
    "3452345",
    "45563654",
    "345234534",
    "443524525",
    "73",
    23,
    'Y'
),
(
    "3452345",
    "45563654",
    "345234534",
    "443524525",
    "46",
    34,
    'N'
),
(
    "3452345",
    "45563654",
    "345234534",
    "443524525",
    "80",
    23,
    'Y'
),
(
    "3452345",
    "45563654",
    "345234534",
    "443524525",
    "45",
    34,
    'N'
),
(
    "3452345",
    "45563654",
    "345234534",
    "443524525",
    "73",
    23,
    'Y'
),
(
    "3452345",
    "45563654",
    "345234534",
    "443524525",
    "46",
    34,
    'N'
),
(
    "3452345",
    "45563654",
    "345234534",
    "443524525",
    "80",
    23,
    'Y'
),
(
    "3452345",
    "45563654",
    "345234534",
    "443524525",
    "45",
    34,
    'N'
);


CREATE TABLE tb_content_dtl_error
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    guid_key NVARCHAR(100) NULL,
    content_key NVARCHAR(100) NULL,
    part NVARCHAR(1000) NULL,
    Part_key NVARCHAR(100) NULL,
    cont NVARCHAR(1000) NULL,
    Cont_key NVARCHAR(100) NULL,
    ENPercent NVARCHAR(100) NULL,
    seqNo INT(4) NULL,
    partindex INT(4) NULL,
    errormsg NVARCHAR(100) NULL
);

DESC tb_content_dtl_error;

INSERT INTO tb_content_dtl_error
(
    guid_key,
    content_key,
    part,
    Part_key,
    cont,
    Cont_key,
    ENPercent,
    seqNo,
    partindex,
    errormsg
)
VALUES
(
    "435235345",
    "435353454",
    "Error message goes here",
    "345354344",
    "Error content goes here",
    "324234323",
    "70",
    56,
    23,
    "Please check if data matches the data in database"
),
(
    "435235345",
    "435353454",
    "Error message goes here",
    "345354344",
    "Error content goes here",
    "324234323",
    "70",
    345,
    54,
    "Please check if data matches the data in database"
),
(
    "435235345",
    "435353454",
    "Error message goes here",
    "345354344",
    "Error content goes here",
    "324234323",
    "70",
    34,
    543,
    "Please check if data matches the data in database"
),
(
    "435235345",
    "435353454",
    "Error message goes here",
    "345354344",
    "Error content goes here",
    "324234323",
    "70",
    34,
    23,
    "Please check if data matches the data in database"
),
(
    "435235345",
    "435353454",
    "Error message goes here",
    "345354344",
    "Error content goes here",
    "324234323",
    "70",
    3654,
    23,
    "Please check if data matches the data in database"
),
(
    "435235345",
    "435353454",
    "Error message goes here",
    "345354344",
    "Error content goes here",
    "324234323",
    "70",
    35,
    23,
    "Please check if data matches the data in database"
),
(
    "435235345",
    "435353454",
    "Error message goes here",
    "345354344",
    "Error content goes here",
    "324234323",
    "70",
    234,
    54,
    "Please check if data matches the data in database"
),
(
    "435235345",
    "435353454",
    "Error message goes here",
    "345354344",
    "Error content goes here",
    "324234323",
    "70",
    345,
    24,
    "Please check if data matches the data in database"
),
(
    "435235345",
    "435353454",
    "Error message goes here",
    "345354344",
    "Error content goes here",
    "324234323",
    "70",
    856,
    76,
    "Please check if data matches the data in database"
);

CREATE TABLE tb_content_dtl_temp
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    guid_key NVARCHAR(100) NULL,
    content_key NVARCHAR(100) NULL,
    part NVARCHAR(1000) NULL,
    Part_key NVARCHAR(100) NULL,
    cont NVARCHAR(1000) NULL,
    Cont_key NVARCHAR(100) NULL,
    ENPercent NVARCHAR(20) NULL,
    seqNo INT(4) NULL,
    partindex INT(4) NULL,
    errormsg NVARCHAR(100) NULL
);

DESC tb_content_dtl_temp;

INSERT INTO tb_content_dtl_temp
(
    guid_key,
    content_key,
    part,
    Part_key,
    cont,
    Cont_key,
    ENPercent,
    seqNo,
    partindex,
    errormsg
)
VALUES
(
    "3425345",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "98",
    856,
    53,
    "web user that a requested page is not available Transfer "
),
(
    "3425345",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "85",
    35,
    356,
    "web user that a requested page is not available Transfer "
),
(
    "3425345",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "78",
    45,
    54,
    "web user that a requested page is not available Transfer "
),
(
    "654646",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "54",
    4564,
    56,
    "web user that a requested page is not available Transfer "
),
(
    "56757756",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "78",
    876,
    56,
    "web user that a requested page is not available Transfer "
),
(
    "3425345",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "98",
    856,
    53,
    "web user that a requested page is not available Transfer "
),
(
    "3425345",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "85",
    35,
    356,
    "web user that a requested page is not available Transfer "
),
(
    "3425345",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "78",
    45,
    54,
    "web user that a requested page is not available Transfer "
),
(
    "654646",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "54",
    4564,
    56,
    "web user that a requested page is not available Transfer "
),
(
    "56757756",
    "3523454",
    "3452354",
    "part_key_3453",
    "Content goes here",
    "content_key_200",
    "78",
    876,
    56,
    "web user that a requested page is not available Transfer "
);

CREATE TABLE tb_ContetnCareIconUploadTemp
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ccnumber NVARCHAR(1000) NULL,
    type NVARCHAR(200) NULL,
    part1 NVARCHAR(1000) NULL,
    content1_1 TEXT NULL, 
    Percent1_1 TEXT NULL,
    content1_2 TEXT NULL,
    Percent1_2 TEXT NULL,
    content1_3 TEXT NULL,
    Percent1_3 TEXT NULL,
    content1_4 TEXT NULL,
    Percent1_4 TEXT NULL,
    content1_5 TEXT NULL,
    Percent1_5 TEXT NULL,
    content1_6 TEXT NULL,
    Percent1_6 TEXT NULL,
    part2 TEXT NULL,
    content2_1 TEXT NULL,
    Percent2_1 TEXT NULL,
    content2_2 TEXT NULL,
    Percent2_2 TEXT NULL,
    content2_3 TEXT NULL,
    Percent2_3 TEXT NULL,
    content2_4 TEXT NULL,
    Percent2_4 TEXT NULL,
    content2_5 TEXT NULL,
    Percent2_5 TEXT NULL,
    content2_6 TEXT NULL,
    Percent2_6 TEXT NULL,
    part3 TEXT NULL,
    content3_1 TEXT NULL,
    Percent3_1 TEXT NULL,
    content3_2 TEXT NULL,
    Percent3_2 TEXT NULL,
    content3_3 TEXT NULL,
    Percent3_3 TEXT NULL,
    content3_4 TEXT NULL,
    Percent3_4 TEXT NULL,
    content3_5 TEXT NULL,
    Percent3_5 TEXT NULL,
    content3_6 TEXT NULL,
    Percent3_6 TEXT NULL,
    part4 TEXT NULL,
    content4_1 TEXT NULL,
    Percent4_1 TEXT NULL,
    content4_2 TEXT NULL,
    Percent4_2 TEXT NULL,
    content4_3 TEXT NULL,
    Percent4_3 TEXT NULL,
    content4_4 TEXT NULL,
    Percent4_4 TEXT NULL,
    content4_5 TEXT NULL,
    Percent4_5 TEXT NULL,
    tb_ContetnCareIconUploadTemp  TEXT NULL,
    Percent4_6 TEXT NULL,
    part5 TEXT NULL,
    content5_1 TEXT NULL,
    Percent5_1 TEXT NULL,
    content5_2 TEXT NULL,
    Percent5_2 TEXT NULL,
    content5_3 TEXT NULL,
    Percent5_3 TEXT NULL,
    content5_4 TEXT NULL,
    Percent5_4 TEXT NULL,
    content5_5 TEXT NULL,
    Percent5_5 TEXT NULL,
    content5_6 TEXT NULL,
    Percent5_6 TEXT NULL,
    part6 TEXT NULL,
    content6_1 TEXT NULL,
    Percent6_1 TEXT NULL,
    content6_2 TEXT NULL,
    Percent6_2 TEXT NULL,
    content6_3 TEXT NULL,
    Percent6_3 TEXT NULL,
    content6_4 TEXT NULL,
    Percent6_4 TEXT NULL,
    content6_5 TEXT NULL,
    Percent6_5 TEXT NULL,
    content6_6 TEXT NULL,
    Percent6_6 TEXT NULL,
    Care1 TEXT NULL,
    Care2 TEXT NULL,
    Care3 TEXT NULL,
    Care4 TEXT NULL,
    Care5 TEXT NULL,
    Care6 TEXT NULL,
    Care7 TEXT NULL,
    Care8 TEXT NULL,
    Care9 TEXT NULL,
    Care10 TEXT NULL,
    Care11 TEXT NULL,
    Care12 TEXT NULL,
    Care13 TEXT NULL,
    Care14 TEXT NULL,
    Care15 TEXT NULL,
    Care16 TEXT NULL,
    Care17 TEXT NULL,
    Care18 TEXT NULL,
    Care19 TEXT NULL,
    Care20 TEXT NULL,
    WashIcon1 TEXT NULL,
    WashIcon2 TEXT NULL,
    WashIcon3 TEXT NULL,
    WashIcon4 TEXT NULL,
    WashIcon5 TEXT NULL,
    AddWashIcon1 TEXT NULL,
    AddWashIcon2 TEXT NULL,
    AddWashIcon3 TEXT NULL,
    AddWashIcon4 TEXT NULL,
    AddWashIcon5 TEXT NULL,
    FootWearIcon1 TEXT NULL,
    FootWearIcon2 TEXT NULL,
    FootWearIcon3 TEXT NULL,
    part7 TEXT NULL,
    content7_1 TEXT NULL,
    Percent7_1 TEXT NULL,
    content7_2 TEXT NULL,
    Percent7_2 TEXT NULL,
    content7_3 TEXT NULL,
    Percent7_3 TEXT NULL,
    content7_4 TEXT NULL,
    Percent7_4 TEXT NULL,
    content7_5 TEXT NULL,
    Percent7_5 TEXT NULL,
    content7_6 TEXT NULL,
    Percent7_6 TEXT NULL,
    part8 TEXT NULL,
    content8_1 TEXT NULL,
    Percent8_1 TEXT NULL,
    content8_2 TEXT NULL,
    Percent8_2 TEXT NULL,
    content8_3 TEXT NULL,
    Percent8_3 TEXT NULL,
    content8_4 TEXT NULL,
    Percent8_4 TEXT NULL,
    content8_5 TEXT NULL,
    Percent8_5 TEXT NULL,
    content8_6 TEXT NULL,
    Percent8_6 TEXT NULL,
    part9 TEXT NULL,
    content9_1 TEXT NULL,
    Percent9_1 TEXT NULL,
    content9_2 TEXT NULL,
    Percent9_2 TEXT NULL,
    content9_3 TEXT NULL,
    Percent9_3 TEXT NULL,
    content9_4 TEXT NULL,
    Percent9_4 TEXT NULL,
    content9_5 TEXT NULL,
    Percent9_5 TEXT NULL,
    content9_6 TEXT NULL,
    Percent9_6 TEXT NULL,
    part10 TEXT NULL,
    content10_1 TEXT NULL,
    Percent10_1 TEXT NULL,
    content10_2 TEXT NULL,
    Percent10_2 TEXT NULL,
    content10_3 TEXT NULL,
    Percent10_3 TEXT NULL,
    content10_4 TEXT NULL,
    Percent10_4 TEXT NULL,
    content10_5 TEXT NULL,
    Percent10_5 TEXT NULL,
    content10_6 TEXT NULL,
    Percent10_6 TEXT NULL,
    part11 TEXT NULL,
    content11_1 TEXT NULL,
    Percent11_1 TEXT NULL,
    content11_2 TEXT NULL,
    Percent11_2 TEXT NULL,
    content11_3 TEXT NULL,
    Percent11_3 TEXT NULL,
    content11_4 TEXT NULL,
    Percent11_4 TEXT NULL,
    content11_5 TEXT NULL,
    Percent11_5 TEXT NULL,
    content11_6 TEXT NULL,
    Percent11_6 TEXT NULL,
    part12 TEXT NULL,
    content12_1 TEXT NULL,
    Percent12_1 TEXT NULL,
    content12_2 TEXT NULL,
    Percent12_2 TEXT NULL,
    content12_3 TEXT NULL,
    Percent12_3 TEXT NULL,
    content12_4 TEXT NULL,
    Percent12_4 TEXT NULL,
    content12_5 TEXT NULL,
    Percent12_5 TEXT NULL,
    content12_6 TEXT NULL,
    Percent12_6 TEXT NULL,
    part13 TEXT NULL,
    content13_1 TEXT NULL,
    Percent13_1 TEXT NULL,
    content13_2 TEXT NULL,
    Percent13_2 TEXT NULL,
    content13_3 TEXT NULL,
    Percent13_3 TEXT NULL,
    content13_4 TEXT NULL,
    Percent13_4 TEXT NULL,
    content13_5 TEXT NULL,
    Percent13_5 TEXT NULL,
    content13_6 TEXT NULL,
    Percent13_6 TEXT NULL,
    part14 TEXT NULL,
    content14_1 TEXT NULL,
    Percent14_1 TEXT NULL,
    content14_2 TEXT NULL,
    Percent14_2 TEXT NULL,
    content14_3 TEXT NULL,
    Percent14_3 TEXT NULL,
    content14_4 TEXT NULL,
    Percent14_4 TEXT NULL,
    content14_5 TEXT NULL,
    Percent14_5 TEXT NULL,
    content14_6 TEXT NULL,
    Percent14_6 TEXT NULL,
    part15 TEXT NULL,
    content15_1 TEXT NULL,
    Percent15_1 TEXT NULL,
    content15_2 TEXT NULL,
    Percent15_2 TEXT NULL,
    content15_3 TEXT NULL,
    Percent15_3 TEXT NULL,
    content15_4 TEXT NULL,
    Percent15_4 TEXT NULL,
    content15_5 TEXT NULL,
    Percent15_5 TEXT NULL,
    content15_6 TEXT NULL,
    Percent15_6 TEXT NULL,
    part16 TEXT NULL,
    content16_1 TEXT NULL,
    Percent16_1 TEXT NULL,
    content16_2 TEXT NULL,
    Percent16_2 TEXT NULL,
    content16_3 TEXT NULL,
    Percent16_3 TEXT NULL,
    content16_4 TEXT NULL,
    Percent16_4 TEXT NULL,
    content16_5 TEXT NULL,
    Percent16_5 TEXT NULL,
    content16_6 TEXT NULL,
    Percent16_6 TEXT NULL,
    part17 TEXT NULL,
    content17_1 TEXT NULL,
    Percent17_1 TEXT NULL,
    content17_2 TEXT NULL,
    Percent17_2 TEXT NULL,
    content17_3 TEXT NULL,
    Percent17_3 TEXT NULL,
    content17_4 TEXT NULL,
    Percent17_4 TEXT NULL,
    content17_5 TEXT NULL,
    Percent17_5 TEXT NULL,
    content17_6 TEXT NULL,
    Percent17_6 TEXT NULL,
    part18 TEXT NULL,
    content18_1 TEXT NULL,
    Percent18_1 TEXT NULL,
    content18_2 TEXT NULL,
    Percent18_2 TEXT NULL,
    content18_3 TEXT NULL,
    Percent18_3 TEXT NULL,
    content18_4 TEXT NULL,
    Percent18_4 TEXT NULL,
    content18_5 TEXT NULL,
    Percent18_5 TEXT NULL,
    content18_6 TEXT NULL,
    Percent18_6 TEXT NULL,
    part19 TEXT NULL,
    content19_1 TEXT NULL,
    Percent19_1 TEXT NULL,
    content19_2 TEXT NULL,
    Percent19_2 TEXT NULL,
    content19_3 TEXT NULL,
    Percent19_3 TEXT NULL,
    content19_4 TEXT NULL,
    Percent19_4 TEXT NULL,
    content19_5 TEXT NULL,
    Percent19_5 TEXT NULL,
    content19_6 TEXT NULL,
    Percent19_6 TEXT NULL,
    part20 TEXT NULL,
    content20_1 TEXT NULL,
    Percent20_1 TEXT NULL,
    content20_2 TEXT NULL,
    Percent20_2 TEXT NULL,
    content20_3 TEXT NULL,
    Percent20_3 TEXT NULL,
    content20_4 TEXT NULL,
    Percent20_4 TEXT NULL,
    content20_5 TEXT NULL,
    Percent20_5 TEXT NULL,
    content20_6 TEXT NULL,
    Percent20_6 TEXT NULL,
    brand_id TEXT NULL
);

DESC tb_ContetnCareIconUploadTemp;

INSERT INTO tb_ContetnCareIconUploadTemp
(
    ccnumber,
    type,
    part1,
    content1_1,
    Percent1_1,
    content1_2,
    Percent1_2,
    content1_3,
    Percent1_3,
    content1_4,
    Percent1_4,
    content1_5,
    Percent1_5,
    content1_6,
    Percent1_6,
    part2,
    content2_1,
    Percent2_1,
    content2_2,
    Percent2_2,
    content2_3,
    Percent2_3,
    content2_4,
    Percent2_4,
    content2_5,
    Percent2_5,
    content2_6,
    Percent2_6,
    part3,
    content3_1,
    Percent3_1,
    content3_2,
    Percent3_2,
    content3_3,
    Percent3_3,
    content3_4,
    Percent3_4,
    content3_5,
    Percent3_5,
    content3_6,
    Percent3_6,
    part4,
    content4_1,
    Percent4_1,
    content4_2,
    Percent4_2,
    content4_3,
    Percent4_3,
    content4_4,
    Percent4_4,
    content4_5,
    Percent4_5,
    tb_ContetnCareIconUploadTemp,
    Percent4_6,
    part5,
    content5_1,
    Percent5_1,
    content5_2,
    Percent5_2,
    content5_3,
    Percent5_3,
    content5_4,
    Percent5_4,
    content5_5,
    Percent5_5,
    content5_6,
    Percent5_6,
    part6,
    content6_1,
    Percent6_1,
    content6_2,
    Percent6_2,
    content6_3,
    Percent6_3,
    content6_4,
    Percent6_4,
    content6_5,
    Percent6_5,
    content6_6,
    Percent6_6,
    Care1,
    Care2,
    Care3,
    Care4,
    Care5,
    Care6,
    Care7,
    Care8,
    Care9,
    Care10,
    Care11,
    Care12,
    Care13,
    Care14,
    Care15,
    Care16,
    Care17,
    Care18,
    Care19,
    Care20,
    WashIcon1,
    WashIcon2,
    WashIcon3,
    WashIcon4,
    WashIcon5,
    AddWashIcon1,
    AddWashIcon2,
    AddWashIcon3,
    AddWashIcon4,
    AddWashIcon5,
    FootWearIcon1,
    FootWearIcon2,
    FootWearIcon3,
    part7,
    content7_1,
    Percent7_1,
    content7_2,
    Percent7_2,
    content7_3,
    Percent7_3,
    content7_4,
    Percent7_4,
    content7_5,
    Percent7_5,
    content7_6,
    Percent7_6,
    part8,
    content8_1,
    Percent8_1,
    content8_2,
    Percent8_2,
    content8_3,
    Percent8_3,
    content8_4,
    Percent8_4,
    content8_5,
    Percent8_5,
    content8_6,
    Percent8_6,
    part9,
    content9_1,
    Percent9_1,
    content9_2,
    Percent9_2,
    content9_3,
    Percent9_3,
    content9_4,
    Percent9_4,
    content9_5,
    Percent9_5,
    content9_6,
    Percent9_6,
    part10,
    content10_1,
    Percent10_1,
    content10_2,
    Percent10_2,
    content10_3,
    Percent10_3,
    content10_4,
    Percent10_4,
    content10_5,
    Percent10_5,
    content10_6,
    Percent10_6,
    part11,
    content11_1,
    Percent11_1,
    content11_2,
    Percent11_2,
    content11_3,
    Percent11_3,
    content11_4,
    Percent11_4,
    content11_5,
    Percent11_5,
    content11_6,
    Percent11_6,
    part12,
    content12_1,
    Percent12_1,
    content12_2,
    Percent12_2,
    content12_3,
    Percent12_3,
    content12_4,
    Percent12_4,
    content12_5,
    Percent12_5,
    content12_6,
    Percent12_6,
    part13,
    content13_1,
    Percent13_1,
    content13_2,
    Percent13_2,
    content13_3,
    Percent13_3,
    content13_4,
    Percent13_4,
    content13_5,
    Percent13_5,
    content13_6,
    Percent13_6,
    part14,
    content14_1,
    Percent14_1,
    content14_2,
    Percent14_2,
    content14_3,
    Percent14_3,
    content14_4,
    Percent14_4,
    content14_5,
    Percent14_5,
    content14_6,
    Percent14_6,
    part15,
    content15_1,
    Percent15_1,
    content15_2,
    Percent15_2,
    content15_3,
    Percent15_3,
    content15_4,
    Percent15_4,
    content15_5,
    Percent15_5,
    content15_6,
    Percent15_6,
    part16,
    content16_1,
    Percent16_1,
    content16_2,
    Percent16_2,
    content16_3,
    Percent16_3,
    content16_4,
    Percent16_4,
    content16_5,
    Percent16_5,
    content16_6,
    Percent16_6,
    part17,
    content17_1,
    Percent17_1,
    content17_2,
    Percent17_2,
    content17_3,
    Percent17_3,
    content17_4,
    Percent17_4,
    content17_5,
    Percent17_5,
    content17_6,
    Percent17_6,
    part18,
    content18_1,
    Percent18_1,
    content18_2,
    Percent18_2,
    content18_3,
    Percent18_3,
    content18_4,
    Percent18_4,
    content18_5,
    Percent18_5,
    content18_6,
    Percent18_6,
    part19,
    content19_1,
    Percent19_1,
    content19_2,
    Percent19_2,
    content19_3,
    Percent19_3,
    content19_4,
    Percent19_4,
    content19_5,
    Percent19_5,
    content19_6,
    Percent19_6,
    part20,
    content20_1,
    Percent20_1,
    content20_2,
    Percent20_2,
    content20_3,
    Percent20_3,
    content20_4,
    Percent20_4,
    content20_5,
    Percent20_5,
    content20_6,
    Percent20_6,
    brand_id
)
VALUES
(
    "3425345",
    "Font awesome",
    "part 1",
    "content1 1",
    "90",
    "content 1 2",
    "80",
    "content 1 3",
    "80",
    "content 1 4",
    "70",
    "content 1 5",
    "50",
    "content 1 6",
    "60",
    "part 2",
    "content 2 1",
    "90",
    "content 2 2",
    "80",
    "content 2 3",
    "80",
    "content 2 4",
    "70",
    "content 2 5",
    "50",
    "content 2 6",
    "60",
    "part 3",
    "content 3 1",
    "90",
    "content 3 2",
    "80",
    "content 3 3",
    "80",
    "content 3 4",
    "70",
    "content 3 5",
    "50",
    "content 3 6",
    "60",
    "part 4",
    "content 4 1",
    "90",
    "content 4 2",
    "80",
    "content 4 3",
    "80",
    "content 4 4",
    "70",
    "content 4 5",
    "50",
    "Contetn Care Icon Upload Temp",
    "80",
    "part 5",
    "content 5 1",
    "90",
    "content 5 2",
    "80",
    "content 5 3",
    "80",
    "content 5 4",
    "70",
    "content 5 5",
    "50",
    "content 5 6",
    "60",
    "part 6",
    "content 6 1",
    "90",
    "content 6 2",
    "80",
    "content 6 3",
    "80",
    "content 6 4",
    "70",
    "content 6 5",
    "50",
    "content 6 6",
    "60",
    "Care 1",
    "Care 2",
    "Care 3",
    "Care 4",
    "Care 5",
    "Care 6",
    "Care 7",
    "Care 8",
    "Care 9",
    "Care 10",
    "Care 12",
    "Care 12",
    "Care 13",
    "Care 14",
    "Care 15",
    "Care 16",
    "Care 17",
    "Care 18",
    "Care 19",
    "Care 20",
    "Wash Icon 1",
    "Wash Icon 2",
    "Wash Icon 3",
    "Wash Icon 4",
    "Wash Icon 5",
    "Add Wash Icon 1",
    "AddWashIcon2",
    "AddWashIcon3",
    "AddWashIcon4",
    "AddWashIcon5",
    "FootWearIcon1",
    "FootWearIcon2",
    "FootWearIcon3",
    "part7",
    "content7_1",
    "Percent7_1",
    "content7_2",
    "Percent7_2",
    "content7_3",
    "Percent7_3",
    "content7_4",
    "Percent7_4",
    "content7_5",
    "Percent7_5",
    "content7_6",
    "Percent7_6",
    "part8",
    "content8_1",
    "Percent8_1",
    "content8_2",
    "Percent8_2",
    "content8_3",
    "Percent8_3",
    "content8_4",
    "Percent8_4",
    "content8_5",
    "Percent8_5",
    "content8_6",
    "Percent8_6",
    "part9",
    "content9_1",
    "Percent9_1",
    "content9_2",
    "Percent9_2",
    "content9_3",
    "Percent9_3",
    "content9_4",
    "Percent9_4",
    "content9_5",
    "Percent9_5",
    "content9_6",
    "Percent9_6",
    "part10",
    "content10_1",
    "Percent10_1",
    "content10_2",
    "Percent10_2",
    "content10_3",
    "Percent10_3",
    "content10_4",
    "Percent10_4",
    "content10_5",
    "Percent10_5",
    "content10_6",
    "Percent10_6",
    "part11",
    "content11_1",
    "Percent11_1",
    "content11_2",
    "Percent11_2",
    "content11_3",
    "Percent11_3",
    "content11_4",
    "Percent11_4",
    "content11_5",
    "Percent11_5",
    "content11_6",
    "Percent11_6",
    "part12",
    "content12_1",
    "Percent12_1",
    "content12_2",
    "Percent12_2",
    "content12_3",
    "Percent12_3",
    "content12_4",
    "Percent12_4",
    "content12_5",
    "Percent12_5",
    "content12_6",
    "Percent12_6",
    "part13",
    "content13_1",
    "Percent13_1",
    "content13_2",
    "Percent13_2",
    "content13_3",
    "Percent13_3",
    "content13_4",
    "Percent13_4",
    "content13_5",
    "Percent13_5",
    "content13_6",
    "Percent13_6",
    "part14",
    "content14_1",
    "Percent14_1",
    "content14_2",
    "Percent14_2",
    "content14_3",
    "Percent14_3",
    "content14_4",
    "Percent14_4",
    "content14_5",
    "Percent14_5",
    "content14_6",
    "Percent14_6",
    "part15",
    "content15_1",
    "Percent15_1",
    "content15_2",
    "Percent15_2",
    "content15_3",
    "Percent15_3",
    "content15_4",
    "Percent15_4",
    "content15_5",
    "Percent15_5",
    "content15_6",
    "Percent15_6",
    "part16",
    "content16_1",
    "Percent16_1",
    "content16_2",
    "Percent16_2",
    "content16_3",
    "Percent16_3",
    "content16_4",
    "Percent16_4",
    "content16_5",
    "Percent16_5",
    "content16_6",
    "Percent16_6",
    "part17",
    "content17_1",
    "Percent17_1",
    "content17_2",
    "Percent17_2",
    "content17_3",
    "Percent17_3",
    "content17_4",
    "Percent17_4",
    "content17_5",
    "Percent17_5",
    "content17_6",
    "Percent17_6",
    "part18",
    "content18_1",
    "Percent18_1",
    "content18_2",
    "Percent18_2",
    "content18_3",
    "Percent18_3",
    "content18_4",
    "Percent18_4",
    "content18_5",
    "Percent18_5",
    "content18_6",
    "Percent18_6",
    "part19",
    "content19_1",
    "Percent19_1",
    "content19_2",
    "Percent19_2",
    "content19_3",
    "Percent19_3",
    "content19_4",
    "Percent19_4",
    "content19_5",
    "Percent19_5",
    "content19_6",
    "Percent19_6",
    "part20",
    "content20_1",
    "Percent20_1",
    "content20_2",
    "Percent20_2",
    "content20_3",
    "Percent20_3",
    "content20_4",
    "Percent20_4",
    "content20_5",
    "Percent20_5",
    "content20_6",
    "Percent20_6",
    "brand_id"
);

CREATE TABLE tb_Care_temp(
    careId int(4) NOT NULL,
    care_key NVARCHAR(100) NULL,
    id_number NVARCHAR(200) NULL,
    Email_ind BIT(1) NULL,
    seqno INT(9) NULL,
    CreateBy NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    last_email DATETIME(6) NULL,
    lastModifiedDate DATETIME(6) NULL,
    ItmCompletedDate DATETIME(6) NULL,
    LastSavedBy NVARCHAR(100) NULL,
    Userid NVARCHAR(100) NULL,
    brandid NVARCHAR(100) NULL,
    Remak TEXT(16)
);

DESC tb_Care_temp;

INSERT INTO
    tb_Care_temp(
        careId,
        care_key,
        id_number,
        Email_ind,
        seqno,
        CreateBy,
        CreateDate,
        last_email,
        lastModifiedDate,
        ItmCompletedDate,
        LastSavedBy,
        Userid,
        brandid,
        Remak
    )
VALUES
    (
        424452,
        "s9043a32l-2bc0-3593-3308-f8s7f8as6h8",
        "83749364",
        B'1111100',
        8883946,
        "Kareem",
        "2021-03-10",
        "2021-03-12",
        "2021-03-15",
        "2021-03-17",
        "Paul",
        "83-4385-5385",
        "3a32l-2bc0-3593-338-f8s7f",
        "checked"
    ),
    (
        123535,
        "l2g32l-2bc0-3593-3308-f8s7f8as6h8",
        "83749364",
        B'1111100',
        64345346,
        "Mario",
        "2021-03-10",
        "2021-03-20",
        "2021-04-15",
        "2021-04-26",
        "Bruno",
        "83-4385-5385",
        "93d2-2bc0-dj24-338-083h4",
        "marked"
    ),
    (
        9374739,
        "32l3bi4l2-2bc0-3593-3308-f8s7f8as6h8",
        "83749364",
        B'10011110',
        484593,
        "Kerie",
        "2021-03-10",
        "2021-03-20",
        "2021-04-15",
        "2021-04-26",
        "VVV",
        "394-0474-283",
        "23k-2h4j-dj24-338-004k",
        "marked"
    ),
    (
        5356424,
        "2jbh4b2b3b-2bc0-3593-3308-f8s7f8as6h8",
        "83749364",
        B'1111100',
        76432356,
        "Mario",
        "2021-03-10",
        "2021-03-20",
        "2021-04-15",
        "2021-04-26",
        "Bruno",
        "83-4385-5385",
        "93d2-2bc0-dj24-338-083h4",
        "marked"
    ),
    (
        8756432,
        "2j3fg4k2-2bc0-3593-3308-f8s7f8as6h8",
        "83749364",
        B'1111100',
        8883946,
        "Kareem",
        "2021-03-10",
        "2021-03-12",
        "2021-03-15",
        "2021-03-17",
        "Dybala",
        "83-4385-5385",
        "3a32l-2bc0-3593-338-f8s7f",
        "checked"
    ),
    (
        1374345,
        "3k34g54j2-2bc0-3593-3308-f8s7f8as6h8",
        "83749364",
        B'1111100',
        9352356,
        "Brian",
        "2021-03-10",
        "2021-03-20",
        "2021-04-15",
        "2021-04-26",
        "Fernandez",
        "83-4385-5385",
        "93d2-2bc0-dj24-338-083h4",
        "marked"
    ),
    (
        53464325,
        "s9043a32l-2bc0-3593-3308-f8s7f8as6h8",
        "83749364",
        B'11111110',
        3557234,
        "Kerie",
        "2021-03-10",
        "2021-03-20",
        "2021-04-15",
        "2021-04-26",
        "VVV",
        "394-0474-283",
        "23k-2h4j-dj24-338-004k",
        "not mentioned"
    ),
    (
        653277,
        "3q43a32l-2bc0-3593-3308-3930ch34",
        "83749364",
        B'1111100',
        733672562,
        "Kevin",
        "2021-03-10",
        "2021-03-20",
        "2021-04-15",
        "2021-04-26",
        "Bruno",
        "83-4385-5385",
        "93d2-2bc0-dj24-338-083h4",
        "unknown"
    ),
    (
        93738,
        "1933k3g4f2-2bc0-937-3308-j4h5g2j4g",
        "83749364",
        B'1111100',
        292640,
        "Kevin",
        "2021-03-10",
        "2021-03-20",
        "2021-04-15",
        "2021-04-26",
        "Bruno",
        "83-4385-5385",
        "93d2-2bc0-dj24-338-083h4",
        "marked"
    ),
    (
        393649,
        "29d0d6d-2bc0-3593-3308-3930ch34",
        "83749364",
        B'1111100',
        2836332,
        "Kevin",
        "2021-03-10",
        "2021-03-20",
        "2021-04-15",
        "2021-04-26",
        "Bruno",
        "83-4385-5385",
        "93d2-2bc0-dj24-338-083h4",
        "unknown"
    );

CREATE TABLE tb_client_upload_temp(
    id INT(4) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    client_code NVARCHAR(100) NULL,
    client_name NVARCHAR(200) NULL,
    login_id NVARCHAR(100) NULL,
    password NVARCHAR(100) NULL,
    clotex_cs_email NVARCHAR(200) NULL,
    brand_email NVARCHAR(200) NULL,
    erp NVARCHAR(40) NULL,
    erp_customer_no NVARCHAR(100) NULL,
    clien t_email NVARCHAR(200) NULL,
    brand_guid NVARCHAR(200) NULL,
    company_guid NVARCHAR(200) NULL,
    msg NVARCHAR(100) NULL
);

DESC tb_client_upload_temp;

INSERT INTO
    tb_client_upload_temp(
        client_code,
        client_name,
        login_id,
        password,
        clotex_cs_email,
        brand_email,
        erp,
        erp_customer_no,
        client_email,
        brand_guid,
        company_guid,
        msg
    )
VALUES
    (
        "93730374",
        "Kareem",
        "282-367-836-545-673-987",
        "kareem$2020",
        "kareem@",
        "karbrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "098765434587",
        "937036408763",
        "Updates to our customers and others need to be."
    ),
    (
        "038464947",
        "Kareem",
        "044-367-836-545-673-494",
        "MARIO$2020",
        "mario@",
        "mariobrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "098765434587",
        "937036408763",
        "Lorem Ipsum is simply dummy text of the printing and typesetting "
    ),
    (
        "39847594",
        "Bien",
        "984-367-836-087-673-493",
        "bein$2020",
        "bien@",
        "bienbrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "038765434",
        "1239839",
        "It has survived not only five centuries, but also the leap into electronic "
    ),
    (
        "84740",
        "Salvador",
        "254-367-836-983-673-493",
        "sal$2020",
        "sal@",
        "salbrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "038765434",
        "037495476",
        "It has survived not only five centuries, but also the leap into electronic "
    ),
    (
        "84740",
        "Ledemp",
        "980-338-836-983-673-493",
        "sal$2020",
        "led@",
        "ledbrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "5432567",
        "037495476",
        "It has survived not only five centuries, but also the leap into electronic "
    ),
    (
        "39364936",
        "ALl",
        "980-338-836-983-673-493",
        "all$2020",
        "all@",
        "allybrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "5432567",
        "037495476",
        "When an unknown printer took a galley of type and scrambled it to make a type specimen book"
    ),
    (
        "9047492",
        "ALl",
        "980-338-836-983-673-493",
        "all$2020",
        "all@",
        "allybrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "5432567",
        "037495476",
        "When an unknown printer took a galley of type and scrambled it to make a type specimen book"
    ),
    (
        "3936484693",
        "Kareem",
        "282-367-836-545-673-987",
        "kareem$2020",
        "kareem@",
        "karbrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "098765434587",
        "937036408763",
        "Updates to our customers and others need to be."
    ),
    (
        "39364946",
        "Kareem",
        "044-367-836-545-673-494",
        "MARIO$2020",
        "mario@",
        "mariobrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "098765434587",
        "937036408763",
        "Lorem Ipsum is simply dummy text of the printing and typesetting "
    ),
    (
        "36572567",
        "Bien",
        "984-367-836-087-673-493",
        "bein$2020",
        "bien@",
        "bienbrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "038765434",
        "1239839",
        "It has survived not only five centuries, but also the leap into electronic "
    ),
    (
        "53678363",
        "Salvador",
        "254-367-836-983-673-493",
        "sal$2020",
        "sal@",
        "salbrand@kar.com",
        "erp",
        "erp_customer_no",
        "clien@gmail.com",
        "038765434",
        "037495476",
        "It has survived not only five centuries, but also the leap into electronic "
    );

CREATE TABLE tb_content(
    id int(4) NOT NULL,
    content_key NVARCHAR(100),
    style_number NVARCHAR(100) NULL,
    father_number NVARCHAR(20) NULL,
    custom_number NVARCHAR(600) NULL,
    Email_ind BIT(8) NULL,
    CreateDate DATETIME(6) NULL,
    CreateBy NVARCHAR(100) NULL,
    lastModifiedDate DATETIME(6) NULL,
    ItmCompletedDate DATETIME(6) NULL,
    LastSavedBy VARCHAR(50) NULL,
    artwork_nos NVARCHAR(100) NULL,
    brandid NVARCHAR(100) NULL,
    Userid NVARCHAR(100) NULL,
    Remak TEXT NULL,
    type NVARCHAR(20) NULL,
    IsEnable CHAR(1) NULL,
    ApprovedState CHAR(1) NULL,
    CONSTRAINT PK_tb_content PRIMARY KEY (content_key, id)
);

INSERT INTO
    tb_content(
        id,
        content_key,
        style_number,
        father_number,
        custom_number,
        Email_ind,
        CreateDate,
        CreateBy,
        lastModifiedDate,
        ItmCompletedDate,
        LastSavedBy,
        artwork_nos,
        brandid,
        Userid,
        Remak,
        type,
        IsEnable,
        ApprovedState
    )
VALUES
    (
        1,
        "e9263c939-2bc0-9482-8053-f423471b5293",
        "83-4-535-53535-39",
        "323-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Kareem",
        "2020-02-12",
        "2020-02-14",
        "Dave",
        "artwork_nos",
        "09876543234",
        "876543234",
        "remark",
        "type1",
        "T",
        "F"
    ),
    (
        2,
        "d428463c939-2bc0-9482-8053-o424i4y42",
        "642-4-535-534-39",
        "234-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-12",
        "2020-02-14",
        "Olivier",
        "artwork_nos",
        "98765434",
        "329874329",
        "remark",
        "type1",
        "T",
        "T"
    ),
    (
        3,
        "k23k4j43n-2bc0-037-8053-o424i4y42",
        "642-4-535-534-39",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-29",
        "2020-02-27",
        "Chapelle",
        "artwork_nos",
        "23497442",
        "00284744563",
        "remark",
        "type3",
        "T",
        "T"
    ),
    (
        4,
        "k23k4j43n-2bc0-037-8053-o424i4y42",
        "642-4-535-534-39",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-29",
        "2020-02-27",
        "Chapelle",
        "artwork_nos",
        "8363093649",
        "293730376644",
        "remark",
        "type3",
        "T",
        "T"
    ),
    (
        5,
        "937305-2bc0-037-8053-o424i4y42",
        "449-4-535-534-092",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "John",
        "2020-02-29",
        "2020-02-27",
        "Lil",
        "artwork_nos",
        "87772964",
        "0839464423",
        "remark",
        "type3",
        "T",
        "T"
    ),
    (
        6,
        "293h4k2v3-2bc0-9482-8053-f423471b5293",
        "83-4-535-53535-39",
        "323-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Kareem",
        "2020-02-12",
        "2020-02-14",
        "Dave",
        "artwork_nos",
        "09876543234",
        "876543234",
        "remark",
        "type1",
        "T",
        "F"
    ),
    (
        7,
        "29894h42m4-2bc0-9482-8053-o424i4y42",
        "642-4-535-534-39",
        "234-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-12",
        "2020-02-14",
        "Olivier",
        "artwork_nos",
        "98765434",
        "329874329",
        "remark",
        "type1",
        "T",
        "T"
    ),
    (
        8,
        "2hb3jk4524-2bc0-037-8053-o424i4y42",
        "642-4-535-534-39",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-29",
        "2020-02-27",
        "Chapelle",
        "artwork_nos",
        "23497442",
        "00284744563",
        "remark",
        "type3",
        "T",
        "T"
    ),
    (
        9,
        "393y5b234-2bc0-037-8053-o424i4y42",
        "642-4-535-534-39",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-29",
        "2020-02-27",
        "Chapelle",
        "artwork_nos",
        "8363093649",
        "293730376644",
        "remark",
        "type3",
        "T",
        "T"
    ),
    (
        10,
        "93jh4k424-2bc0-037-8053-o424i4y42",
        "449-4-535-534-092",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "John",
        "2020-02-29",
        "2020-02-27",
        "Lil",
        "artwork_nos",
        "87772964",
        "0839464423",
        "remark",
        "type3",
        "T",
        "T"
    );

CREATE TABLE tb_content_error(
    id int(4) NOT NULL,
    content_key NVARCHAR(100),
    style_number NVARCHAR(100) NULL,
    father_number NVARCHAR(20) NULL,
    custom_number NVARCHAR(600) NULL,
    Email_ind BIT(8) NULL,
    CreateDate DATETIME(6) NULL,
    CreateBy NVARCHAR(100) NULL,
    lastModifiedDate DATETIME(6) NULL,
    ItmCompletedDate DATETIME(6) NULL,
    LastSavedBy VARCHAR(50) NULL,
    artwork_nos NVARCHAR(100) NULL,
    brandid NVARCHAR(100) NULL,
    Userid NVARCHAR(100) NULL,
    Remak TEXT NULL,
    type NVARCHAR(20) NULL,
    errormsg NVARCHAR(100) NULL,
    CONSTRAINT PK_tb_content PRIMARY KEY (content_key, id)
);

DESC tb_content_error;

INSERT INTO
    tb_content_error(
        id,
        content_key,
        style_number,
        father_number,
        custom_number,
        Email_ind,
        CreateDate,
        CreateBy,
        lastModifiedDate,
        ItmCompletedDate,
        LastSavedBy,
        artwork_nos,
        brandid,
        Userid,
        Remak,
        type,
        errormsg
    )
VALUES
    (
        1,
        "e9263c939-2bc0-9482-8053-f423471b5293",
        "83-4-535-53535-39",
        "323-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Kareem",
        "2020-02-12",
        "2020-02-14",
        "Dave",
        "artwork_nos",
        "09876543234",
        "876543234",
        "remark",
        "type1",
        "Lorem Ipsum is simply dummy text "
    ),
    (
        2,
        "d428463c939-2bc0-9482-8053-o424i4y42",
        "642-4-535-534-39",
        "234-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-12",
        "2020-02-14",
        "Olivier",
        "artwork_nos",
        "98765434",
        "329874329",
        "remark",
        "type1",
        "like Aldus PageMaker  versions of Lorem"
    ),
    (
        3,
        "k23k4j43n-2bc0-037-8053-o424i4y42",
        "642-4-535-534-39",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-29",
        "2020-02-27",
        "Chapelle",
        "artwork_nos",
        "23497442",
        "00284744563",
        "remark",
        "type3",
        "containing Lorem Ipsum passages, and more recently"
    ),
    (
        4,
        "k23k4j43n-2bc0-037-8053-o424i4y42",
        "642-4-535-534-39",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-29",
        "2020-02-27",
        "Chapelle",
        "artwork_nos",
        "8363093649",
        "293730376644",
        "remark",
        "type3",
        "Lorem Ipsum has been the industry's standard"
    ),
    (
        5,
        "937305-2bc0-037-8053-o424i4y42",
        "449-4-535-534-092",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "John",
        "2020-02-29",
        "2020-02-27",
        "Lil",
        "artwork_nos",
        "87772964",
        "0839464423",
        "remark",
        "type3",
        "containing Lorem Ipsum passages, and more recently with desktop"
    ),
    (
        6,
        "293h4k2v3-2bc0-9482-8053-f423471b5293",
        "83-4-535-53535-39",
        "323-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Kareem",
        "2020-02-12",
        "2020-02-14",
        "Dave",
        "artwork_nos",
        "09876543234",
        "876543234",
        "remark",
        "type1",
        "when an unknown printer took a galley of type and "
    ),
    (
        7,
        "29894h42m4-2bc0-9482-8053-o424i4y42",
        "642-4-535-534-39",
        "234-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-12",
        "2020-02-14",
        "Olivier",
        "artwork_nos",
        "98765434",
        "329874329",
        "remark",
        "type1",
        "It was popularised in the 1960s with the release"
    ),
    (
        8,
        "2hb3jk4524-2bc0-037-8053-o424i4y42",
        "642-4-535-534-39",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-29",
        "2020-02-27",
        "Chapelle",
        "artwork_nos",
        "23497442",
        "00284744563",
        "remark",
        "type3",
        " It has survived not only five"
    ),
    (
        9,
        "393y5b234-2bc0-037-8053-o424i4y42",
        "642-4-535-534-39",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "Mario",
        "2020-02-29",
        "2020-02-27",
        "Chapelle",
        "artwork_nos",
        "8363093649",
        "293730376644",
        "remark",
        "type3",
        " when an unknown printer took a galley of type and "
    ),
    (
        10,
        "93jh4k424-2bc0-037-8053-o424i4y42",
        "449-4-535-534-092",
        "028-442-424",
        "842-245-4242",
        B'11111101',
        "2020-02-10",
        "John",
        "2020-02-29",
        "2020-02-27",
        "Lil",
        "artwork_nos",
        "87772964",
        "0839464423",
        "remark",
        "type3",
        "it to make a type specimen book. It has survived not only five"
    );

CREATE TABLE tb_ContentNumVersion (
    Id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BrandId NVARCHAR(100) NULL,
    ContentNumber NVARCHAR(100) NULL,
    VersionNum NVARCHAR(40) NULL,
    IsEnable CHAR(1) NULL,
    VersionDates NVARCHAR(100) NULL,
    BrandVersionDates NVARCHAR(100) NULL,
    ChangeType NVARCHAR(40) NULL,
    ChildKey NVARCHAR(100) NULL,
    UpdateBy NVARCHAR(100) NULL,
    UpdateDate DATETIME(6) NULL
);

DESC tb_ContentNumVersion;

INSERT INTO
    tb_ContentNumVersion (
        BrandId,
        ContentNumber,
        VersionNum,
        IsEnable,
        VersionDates,
        BrandVersionDates,
        ChangeType,
        ChildKey,
        UpdateBy,
        UpdateDate
    )
VALUES
    (
        "4325435",
        "content_3454",
        "v3",
        "Y",
        "2021-04-10",
        "2021-04-28",
        "ChangeType",
        "ChildKey",
        "Mario",
        "2021-04-21"
    ),
    (
        "4847203420",
        "content_309746",
        "v3",
        "Y",
        "2021-04-12",
        "2021-04-30",
        "ChangeType1",
        "ChildKey1",
        "Kareem",
        "2021-04-21"
    ),
    (
        "119876353",
        "content_0213",
        "v3",
        "Y",
        "2021-04-12",
        "2021-04-30",
        "ChangeType2",
        "ChildKey2",
        "Aime",
        "2021-04-21"
    ),
    (
        "932937",
        "content_309746",
        "v3",
        "N",
        "2021-04-12",
        "2021-04-30",
        "ChangeType1",
        "ChildKey1",
        "kil",
        "2021-04-21"
    ),
    (
        "09373110",
        "content_388",
        "v3",
        "Y",
        "2021-04-14",
        "2021-04-29",
        "ChangeType4",
        "ChildKey3",
        "Kareem",
        "2021-04-21"
    ),
    (
        "4325435",
        "content_3454",
        "v3",
        "Y",
        "2021-04-10",
        "2021-04-28",
        "ChangeType",
        "ChildKey",
        "Mario",
        "2021-04-21"
    ),
    (
        "84740274",
        "content_93846",
        "v3",
        "Y",
        "2021-04-12",
        "2021-04-30",
        "ChangeType1",
        "ChildKey1",
        "Chidima",
        "2021-04-21"
    ),
    (
        "119876353",
        "content_1193",
        "v3",
        "N",
        "2021-04-12",
        "2021-04-30",
        "ChangeType2",
        "ChildKey2",
        "Ciel",
        "2021-04-21"
    ),
    (
        "0027464",
        "content_073674",
        "v3",
        "N",
        "2021-04-12",
        "2021-04-30",
        "ChangeType1",
        "ChildKey1",
        "Madhit",
        "2021-04-21"
    ),
    (
        "9937442",
        "content_29374",
        "v3",
        "Y",
        "2021-04-14",
        "2021-04-29",
        "ChangeType4",
        "ChildKey3",
        "Friend",
        "2021-04-21"
    );

CREATE TABLE tb_ContentNumVersion_Error(
    Id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BrandId NVARCHAR(100) NULL,
    ContentNumber NVARCHAR(100) NULL,
    VersionNum NVARCHAR(40) NULL,
    IsEnable CHAR(1) NULL,
    VersionDates NVARCHAR(100) NULL,
    BrandVersionDates NVARCHAR(100) NULL,
    ChangeType NVARCHAR(40) NULL,
    ChildKey NVARCHAR(100) NULL,
    UpdateBy NVARCHAR(100) NULL,
    UpdateDate DATETIME(6) NULL
);

DESC tb_ContentNumVersion_Error;

INSERT INTO
    tb_ContentNumVersion_Error (
        BrandId,
        ContentNumber,
        VersionNum,
        IsEnable,
        VersionDates,
        BrandVersionDates,
        ChangeType,
        ChildKey,
        UpdateBy,
        UpdateDate
    )
VALUES
    (
        "4325435",
        "content_3454",
        "v3",
        "Y",
        "2021-04-10",
        "2021-04-28",
        "ChangeType",
        "ChildKey",
        "Mario",
        "2021-04-21"
    ),
    (
        "4847203420",
        "content_309746",
        "v3",
        "Y",
        "2021-04-12",
        "2021-04-30",
        "ChangeType1",
        "ChildKey1",
        "Kareem",
        "2021-04-21"
    ),
    (
        "119876353",
        "content_0213",
        "v3",
        "Y",
        "2021-04-12",
        "2021-04-30",
        "ChangeType2",
        "ChildKey2",
        "Aime",
        "2021-04-21"
    ),
    (
        "932937",
        "content_309746",
        "v3",
        "N",
        "2021-04-12",
        "2021-04-30",
        "ChangeType1",
        "ChildKey1",
        "kil",
        "2021-04-21"
    ),
    (
        "09373110",
        "content_388",
        "v3",
        "Y",
        "2021-04-14",
        "2021-04-29",
        "ChangeType4",
        "ChildKey3",
        "Kareem",
        "2021-04-21"
    ),
    (
        "4325435",
        "content_3454",
        "v3",
        "Y",
        "2021-04-10",
        "2021-04-28",
        "ChangeType",
        "ChildKey",
        "Mario",
        "2021-04-21"
    ),
    (
        "84740274",
        "content_93846",
        "v3",
        "Y",
        "2021-04-12",
        "2021-04-30",
        "ChangeType1",
        "ChildKey1",
        "Chidima",
        "2021-04-21"
    ),
    (
        "119876353",
        "content_1193",
        "v3",
        "N",
        "2021-04-12",
        "2021-04-30",
        "ChangeType2",
        "ChildKey2",
        "Ciel",
        "2021-04-21"
    ),
    (
        "0027464",
        "content_073674",
        "v3",
        "N",
        "2021-04-12",
        "2021-04-30",
        "ChangeType1",
        "ChildKey1",
        "Madhit",
        "2021-04-21"
    ),
    (
        "9937442",
        "content_29374",
        "v3",
        "Y",
        "2021-04-14",
        "2021-04-29",
        "ChangeType4",
        "ChildKey3",
        "Friend",
        "2021-04-21"
    );

CREATE TABLE tb_ContentNumVersion_Error_Temp(
    Id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ContentNumber NVARCHAR(100) NULL,
    BrandId NVARCHAR(100) NULL,
    VersionNum NVARCHAR(40) NULL,
    VersionDates NVARCHAR(55) NULL,
    VersionNums NVARCHAR(55) NULL,
    UpdateDates NVARCHAR(1000) NULL
);

INSERT INTO
    tb_ContentNumVersion_Error_Temp(
        ContentNumber,
        BrandId,
        VersionNum,
        VersionDates,
        VersionNums,
        UpdateDates
    )
VALUES
    (
        "content-98765",
        "983-42-242-536-53",
        "v3.3.0",
        "2nd Jul 2021",
        "3",
        "Lorem Ipsum is simply dummy text of the printing and typesetting "
    ),
    (
        "content-7643",
        "983-42-242-536-53",
        "v3.3.0",
        "2nd Jul 2021",
        "5",
        "containing Lorem Ipsum passages, and more recently with desktop"
    ),
    (
        "content-6453",
        "125-42-242-536-53",
        "v3.2.0",
        "2nd Jul 2014",
        "4",
        "like Aldus PageMaker  versions of Lorem Ipsum.including"
    ),
    (
        "content-6532",
        "746-42-242-5332-53",
        "v3.3.0",
        "2nd Jul 2015",
        "3",
        " Lorem Ipsum has been the industry's standard dummy text ever"
    ),
    (
        "content-7643",
        "011-42-242-536-53",
        "v3.3.0",
        "2nd Jul 2016",
        "5",
        "but also the leap into electronic typesetting, remaining essentially"
    ),
    (
        "content-9374",
        "853-42-242-536-53",
        "v3.2.0",
        "2nd Jul 2018",
        "4",
        "like Aldus PageMaker  versions of Lorem Ipsum.including"
    ),
     (
        "content-00283",
        "746-42-242-5332-53",
        "v3.3.0",
        "2nd Jul 2019",
        "3",
        " Lorem Ipsum has been the industry's standard dummy text ever"
    ),
    (
        "content-2884",
        "011-42-242-536-53",
        "v3.3.0",
        "2nd May 2021",
        "5",
        "but also the leap into electronic typesetting, remaining essentially"
    ),
    (
        "content-22884",
        "853-42-242-536-53",
        "v3.2.0",
        "2nd May 2020",
        "4",
        "like Aldus PageMaker  versions of Lorem Ipsum.including"
    ),
    (
        "content-52363",
        "853-42-242-536-53",
        "v3.2.0",
        "2nd May 2022",
        "4",
        "like Aldus PageMaker  versions of Lorem Ipsum.including"
    );

CREATE TABLE tb_Coo_Country_Code
(
    guid_key NVARCHAR(100) NOT NULL PRIMARY KEY,
    brandid NVARCHAR(100) NULL,
    country_code_key NVARCHAR(100) NULL,
    show_status NVARCHAR(20) NULL,
    seqno INT(4) NULL,
    IsSeparateLang CHAR(1) NULL
);

DESC tb_Coo_Country_Code;

INSERT INTO tb_Coo_Country_Code
(
    guid_key,
    brandid,
    country_code_key,
    show_status,
    seqno,
    IsSeparateLang
)
VALUES
(
    "132",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
),
(
    "124",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
),
(
    "125",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
),
(
    "127",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
),
(
    "128",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
),
(
    "723",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
),
(
    "624",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
),
(
    "794",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
),
(
    "845",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
),
(
    "456",
    "253245354",
    "RW_345235",
    "VISIBLE",
    234,
    'Y'
);

CREATE TABLE tb_CopyOrderTemp
(
    ID INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    guid_key NVARCHAR(100) NULL,
    order_no NVARCHAR(100) NULL,
    num INT(4) NULL,
    po_number NVARCHAR(600) NULL,
    factory_code NVARCHAR(100) NULL,
    order_expdate NVARCHAR(100) NULL,
    invoice_cpyname NVARCHAR(510) NULL,
    invoice_addr TEXT NULL,
    invoice_email TEXT NULL,
    invoice_contact TEXT NULL,
    invoice_phone NVARCHAR(400) NULL,
    invoice_fax NVARCHAR(100) NULL,
    delivery_cpyname NVARCHAR(510) NULL,
    delivery_addr TEXT NULL,
    delivery_email TEXT NULL,
    delivery_contact NVARCHAR(400) NULL,
    delivery_phone NVARCHAR(400) NULL,
    delivery_fax NVARCHAR(100) NULL,
    item_ref1 NVARCHAR(300) NULL,
    item_ref2 NVARCHAR(300) NULL,
    item_ref3 NVARCHAR(300) NULL,
    item_ref4 NVARCHAR(300) NULL,
    item_ref5 NVARCHAR(300) NULL,
    item_ref6 NVARCHAR(300) NULL,
    item_ref7 NVARCHAR(300) NULL,
    item_ref8 NVARCHAR(300) NULL,
    item_ref9 NVARCHAR(300) NULL,
    style_number NVARCHAR(100) NULL,
    coo TEXT NULL,
    season_code NVARCHAR(100) NULL,
    colour NVARCHAR(300) NULL,
    gender NVARCHAR(300) NULL,
    remark TEXT NULL,
    content_number NVARCHAR(100) NULL,
    size_matrix_type NVARCHAR(400) NULL,
    size_content TEXT NULL,
    total_qty  NVARCHAR(100) NULL,
    artwork_number  NVARCHAR(100) NULL,
    brandid  NVARCHAR(300) NULL,
    order_user  NVARCHAR(100) NULL,
    order_date DATETIME(6) NULL,
    order_confirm_date DATETIME(6) NULL,
    is_draft   NVARCHAR(100) NULL,
    total_qty1  NVARCHAR(100) NULL,
    total_qty2  NVARCHAR(100) NULL,
    total_qty3  NVARCHAR(100) NULL,
    total_qty4  NVARCHAR(100) NULL,
    total_qty5  NVARCHAR(100) NULL,
    total_qty6  NVARCHAR(100) NULL,
    total_qty7  NVARCHAR(100) NULL,
    total_qty8  NVARCHAR(100) NULL,
    total_qty9  NVARCHAR(100) NULL,
    F1 TEXT NULL,
    F2 TEXT NULL,
    F3 TEXT NULL,
    F4 TEXT NULL,
    F5 TEXT NULL,
    F6 TEXT NULL,
    F7 TEXT NULL,
    F8 TEXT NULL,
    F9 TEXT NULL,
    F10  TEXT NULL,
    F11  TEXT NULL,
    F12  TEXT NULL,
    F13  TEXT NULL,
    F14  TEXT NULL,
    F15  TEXT NULL,
    F16  TEXT NULL,
    F17  TEXT NULL,
    F18  TEXT NULL,
    F19  TEXT NULL,
    F20  TEXT NULL,
    F21  TEXT NULL,
    F22  TEXT NULL,
    F23  TEXT NULL,
    F24  TEXT NULL,
    F25  TEXT NULL,
    F26  TEXT NULL,
    F27  TEXT NULL,
    F28  TEXT NULL,
    F29  TEXT NULL,
    F30  TEXT NULL,
    A_Content_Number NVARCHAR(100) NULL,
    B_Content_Number NVARCHAR(100) NULL,
    C_Content_Number NVARCHAR(100) NULL,
    invoice_addr2 TEXT NULL,
    invoice_addr3 TEXT NULL,
    delivery_city NVARCHAR(200) NULL,
    delivery_country NVARCHAR(200) NULL,
    delivery_post_code NVARCHAR(200) NULL,
    delivery_addr2 TEXT NULL,
    delivery_addr3 TEXT NULL,
    size_pointer VARCHAR(200) NULL,
    size_content1 TEXT NULL,
    size_content2 TEXT NULL,
    size_content3 TEXT NULL,
    size_content4 TEXT NULL,
    size_content5 TEXT NULL,
    size_content6 TEXT NULL,
    size_content7 TEXT NULL,
    size_content8 TEXT NULL,
    size_content9 TEXT NULL,
    size_content10 TEXT NULL,
    size_matrix_type1 NVARCHAR(400) NULL,
    size_matrix_type2 NVARCHAR(400) NULL,
    size_matrix_type3 NVARCHAR(400) NULL,
    size_matrix_type4 NVARCHAR(400) NULL,
    size_matrix_type5 NVARCHAR(400) NULL,
    size_matrix_type6 NVARCHAR(400) NULL,
    size_matrix_type7 NVARCHAR(400) NULL,
    size_matrix_type8 NVARCHAR(400) NULL,
    size_matrix_type9 NVARCHAR(400) NULL,
    size_matrix_type10 NVARCHAR(400) NULL,
    LocationCode TEXT NULL,
    Price1  NVARCHAR(40) NULL,
    Price2  NVARCHAR(40) NULL,
    Price3  NVARCHAR(40) NULL,
    Price4  NVARCHAR(40) NULL,
    Price5  NVARCHAR(40) NULL,
    Price6  NVARCHAR(40) NULL,
    Price7  NVARCHAR(40) NULL,
    Price8  NVARCHAR(40) NULL,
    Price9  NVARCHAR(40) NULL,
    currency1 VARCHAR(40) NULL,
    currency2 VARCHAR(40) NULL,
    currency3 VARCHAR(40) NULL,
    currency4 VARCHAR(40) NULL,
    currency5 VARCHAR(40) NULL,
    currency6 VARCHAR(40) NULL,
    currency7 VARCHAR(40) NULL,
    currency8 VARCHAR(40) NULL,
    currency9 VARCHAR(40) NULL,
    SumPrice VARCHAR(40) NULL,
    A_Preview TEXT NULL,
    B_Preview TEXT NULL,
    C_Preview TEXT NULL,
    AWExcel_Path VARCHAR(200) NULL,
    ShrinkagePorcentaje INT(4) NULL,
    DefaultSizeContent TEXT NULL,
    DraftOrderEmail NVARCHAR(400) NULL,
    IsWastage NVARCHAR(100) NULL,
    UpdateUser NVARCHAR(100) NULL,
    UpdateDate DATETIME(6) NULL,
    IsSendDrafEmail VARCHAR(30) NULL,
    AwReportFTPStatus NVARCHAR(20) NULL,
    OrderApiStatus CHAR(20) NULL,
    TrackingStatus NVARCHAR(100) NULL,
    item_ref10 NVARCHAR(300) NULL,
    total_qty10 NVARCHAR(100) NULL,
    Price10 NVARCHAR(40) NULL,
    currency10 NVARCHAR(40) NULL,
    EdiOrderNo NVARCHAR(100) NULL,
    Consolidated_ID NVARCHAR(100) NULL,
    Supplier_Code NVARCHAR(100) NULL,
    Send_Date NVARCHAR(100) NULL,
    Product_Description NVARCHAR(400) NULL,
    IsCopyOrder CHAR(30) NULL,
    AllowConfirmOrderDate NVARCHAR(100) NULL,
    SizeTableImg NVARCHAR(200) NULL,
    SizeContentNoMerged TEXT NULL,
    ArtWorkStatus CHAR(10) NULL,
    RePrintNum INT(4) NULL,
    RePrintedNum INT(4) NULL,
    RevNo INT(4) NULL,
    PDFCheckStatus CHAR(41) NULL,
    PoLastUpdateTime NVARCHAR(40) NULL,
    OptionId NVARCHAR(100) NULL,
    LeanAwReportFTPStatus CHAR(1) NULL,
    Order_Encryption NVARCHAR(100) NULL,
    AwXmlStatus NVARCHAR(400) NULL,
    qr_link TEXT NULL,
    EPCStatus NVARCHAR(400) NULL,
    FtpEcpStatus VARCHAR(100) NULL,
    FtpTidStatus VARCHAR(100) NULL,
    TempKey NVARCHAR(100) NULL,
    CreateDate DATETIME(6) NULL,
    QRPDFStatus CHAR(1) NULL,
    IntegrationXmlStatus  NVARCHAR(2) NULL,
    IntegrationXmlNum INT(4) NULL,
    CustomerId NVARCHAR(100) NULL,
    InvoiceAddressId NVARCHAR(100) NULL,
    InvoiceContactId NVARCHAR(100) NULL,
    DeliveryAddressId NVARCHAR(100) NULL,
    DeliveryContactId NVARCHAR(100) NULL,
    ERPEntityID NVARCHAR(100) NULL,
    MyAtexControl NVARCHAR(100) NULL
);

DESC tb_CopyOrderTemp;

INSERT INTO tb_CopyOrderTemp
(
    guid_key,
    order_no,
    num,
    po_number,
    factory_code,
    order_expdate,
    invoice_cpyname,
    invoice_addr,
    invoice_email,
    invoice_contact,
    invoice_phone,
    invoice_fax,
    delivery_cpyname,
    delivery_addr,
    delivery_email,
    delivery_contact,
    delivery_phone,
    delivery_fax,
    item_ref1,
    item_ref2,
    item_ref3,
    item_ref4,
    item_ref5,
    item_ref6,
    item_ref7,
    item_ref8,
    item_ref9,
    style_number,
    coo,
    season_code,
    colour,
    gender,
    remark,
    content_number,
    size_matrix_type,
    size_content,
    total_qty,
    artwork_number,
    brandid,
    order_user,
    order_date,
    order_confirm_date,
    is_draft,
    total_qty1,
    total_qty2,
    total_qty3,
    total_qty4,
    total_qty5,
    total_qty6,
    total_qty7,
    total_qty8,
    total_qty9,
    F1,
    F2,
    F3,
    F4,
    F5,
    F6,
    F7,
    F8,
    F9,
    F10,
    F11,
    F12,
    F13,
    F14,
    F15,
    F16,
    F17,
    F18,
    F19,
    F20,
    F21,
    F22,
    F23,
    F24,
    F25,
    F26,
    F27,
    F28,
    F29,
    F30,
    A_Content_Number,
    B_Content_Number,
    C_Content_Number,
    invoice_addr2,
    invoice_addr3,
    delivery_city,
    delivery_country,
    delivery_post_code,
    delivery_addr2,
    delivery_addr3,
    size_pointer,
    size_content1,
    size_content2,
    size_content3,
    size_content4,
    size_content5,
    size_content6,
    size_content7,
    size_content8,
    size_content9,
    size_content10,
    size_matrix_type1,
    size_matrix_type2,
    size_matrix_type3,
    size_matrix_type4,
    size_matrix_type5,
    size_matrix_type6,
    size_matrix_type7,
    size_matrix_type8,
    size_matrix_type9,
    size_matrix_type10,
    LocationCode,
    Price1,
    Price2,
    Price3,
    Price4,
    Price5,
    Price6,
    Price7,
    Price8,
    Price9,
    currency1,
    currency2,
    currency3,
    currency4,
    currency5,
    currency6,
    currency7,
    currency8,
    currency9,
    SumPrice,
    A_Preview,
    B_Preview,
    C_Preview,
    AWExcel_Path,
    ShrinkagePorcentaje,
    DefaultSizeContent,
    DraftOrderEmail,
    IsWastage,
    UpdateUser,
    UpdateDate,
    IsSendDrafEmail,
    AwReportFTPStatus,
    OrderApiStatus,
    TrackingStatus,
    item_ref10,
    total_qty10,
    Price10,
    currency10,
    EdiOrderNo,
    Consolidated_ID,
    Supplier_Code,
    Send_Date,
    Product_Description,
    IsCopyOrder,
    AllowConfirmOrderDate,
    SizeTableImg,
    SizeContentNoMerged,
    ArtWorkStatus,
    RePrintNum,
    RePrintedNum,
    RevNo,
    PDFCheckStatus,
    PoLastUpdateTime,
    OptionId,
    LeanAwReportFTPStatus,
    Order_Encryption,
    AwXmlStatus,
    qr_link,
    EPCStatus,
    FtpEcpStatus,
    FtpTidStatus,
    TempKey,
    CreateDate,
    QRPDFStatus,
    IntegrationXmlStatus,
    IntegrationXmlNum,
    CustomerId,
    InvoiceAddressId,
    InvoiceContactId,
    DeliveryAddressId,
    DeliveryContactId,
    ERPEntityID,
    MyAtexControl
)
VALUES
(
    "1234",
    "4234234",
    12,
    "2314214",
    "TESLA_34234",
    "2022-03-04 20:04:12",
    "invoice copyname",
    "invoice address",
    "invoice email",
    "07825432453",
    "+230543533",
    "245253",
    "245253",
    "John Doe",
    "INDIA_93242",
    "customer@gmail.com",
    "+243453453",
    "+246345235",
    "delivery fax",
    "ref 1",
    "ref 2",
    "ref 3",
    "ref 4",
    "ref 6",
    "ref 7",
    "ref 8",
    "ref 9",
    "ref 9",
    "style 1",
    "345345",
    "YELLOW",
    "MALE",
    "Remark content",
    "content num 2342423",
    "3452453",
    "4533",
    "34000",
    "345243",
    "345234",
    "user_34535",
    "2022-05-06 12:04:43",
    "2022-05-06 12:04:43",
    "DRAFTED",
    "2500",
    "2500",
    "2500",
    "2500",
    "2500",
    "2500",
    "2500",
    "2500",
    "2500",
    "F1 functionality",
    "F2 functionality",
    "F3 functionality",
    "F4 functionality",
    "F5 functionality",
    "F6 functionality",
    "F7 functionality",
    "F8 functionality",
    "F9 functionality",
    "F10  functionality",
    "F11  functionality",
    "F12  functionality",
    "F13  functionality",
    "F14  functionality",
    "F15  functionality",
    "F16  functionality",
    "F17  functionality",
    "F18  functionality",
    "F19  functionality",
    "F20  functionality",
    "F21  functionality",
    "F22  functionality",
    "F23  functionality",
    "F24  functionality",
    "F25  functionality",
    "F26  functionality",
    "F27  functionality",
    "F28  functionality",
    "F29  functionality",
    "F30  functionality",
    "A_content_num_234",
    "B_content_num_234",
    "C_content_num_234",
    "invoice addr 2",
    "invoice addr 3",
    "NEW DELHI",
    "INDIA",
    "PO.BOX.3453",
    "NEW DELHI",
    "NEW DELHI",
    "42353",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "700",
    "size matrix type1",
    "size matrix type2",
    "size matrix type3",
    "size matrix type4",
    "size matrix type5",
    "size matrix type6",
    "size matrix type7",
    "size matrix type8",
    "size matrix type9",
    "size matrix type10",
    "435000",
    "7000",
    "7000",
    "7000",
    "7000",
    "7000",
    "7000",
    "7000",
    "7000",
    "7000",
    "india rupee",
    "india rupee",
    "india rupee",
    "india rupee",
    "india rupee",
    "india rupee",
    "india rupee",
    "india rupee",
    "india rupee",
    "900000",
    "A Preview",
    "B Preview",
    "C Preview",
    "changes/copy.pdf",
    464,
    "9000",
    "draft@gmail.com",
    "Y",
    "342534534",
    "2022-03-06 20:04:05",
    "sendemail@gmail.com",
    "REPORTED",
    "OrderApi Status",
    "Tracking Status",
    "item ref10",
    "70000",
    "53000",
    "INDIA RUPPEE",
    "4523455",
    "4535345",
    "6300000",
    "2022-03-05 12:05:03",
    "Product Description",
    'Y',
    "2022-03-05 12:05:03",
    "500",
    "600",
    'Y',
    1200,
    1200,
    1200,
    "FOUND",
    "2022-03-05 12:05:03",
    "63000",
    'Y',
    "24535",
    "EDITED",
    "qr link",
    "EPCStatus_4523",
    "FtpEcpStatus_4523",
    "FtpTidStatus_4523",
    "TempKey_4523",
    "2022-03-05 12:05:03",
    'N',
    'K',
    300,
    "4352355",
    "INVOICE_345345",
    "4353543",
    "NEW DELHI",
    "99345333",
    "ERPEntity_9345",
    "My Atex Control"
);

CREATE TABLE tb_Cust_addr_upload_error
(
    guid_key INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type NVARCHAR(100) NULL,
    SubCod NVARCHAR(500) NULL,
    company_name NVARCHAR(500) NULL,
    address NVARCHAR(800) NULL,
    contact_person NVARCHAR(500) NULL,
    phone NVARCHAR(500) NULL,
    fax NVARCHAR(500) NULL,
    email NVARCHAR(500) NULL,
    seqno INT(4) NULL,
    address2 NVARCHAR(800) NULL,
    address3 NVARCHAR(800) NULL,
    country NVARCHAR(100) NULL,
    city NVARCHAR(100) NULL,
    post_code NVARCHAR(400) NULL,
    cust_guid_key NVARCHAR(100) NULL,
    code_name NVARCHAR(400) NULL,
    msg TEXT NULL
);

DESC tb_Cust_addr_upload_error;

INSERT tb_Cust_addr_upload_error
(
    type,
    SubCod,
    company_name,
    address,
    contact_person,
    phone,
    fax,
    email,
    seqno,
    address2,
    address3,
    country,
    city,
    post_code,
    cust_guid_key,
    code_name,
    msg
)
VALUES
(
    "WARNING",
    "435325",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    45,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    64,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "622345",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "931222",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    95,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "435325",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    45,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    64,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "622345",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "931222",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    95,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "435325",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    45,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    64,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "622345",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "931222",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    95,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
);

CREATE TABLE tb_Cust_addr_upload_temp(
    guid_key INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type NVARCHAR(100) NULL,
    SubCod NVARCHAR(500) NULL,
    company_name NVARCHAR(500) NULL,
    address NVARCHAR(800) NULL,
    contact_person NVARCHAR(500) NULL,
    phone NVARCHAR(500) NULL,
    fax NVARCHAR(500) NULL,
    email NVARCHAR(500) NULL,
    seqno INT(4) NULL,
    address2 NVARCHAR(800) NULL,
    address3 NVARCHAR(800) NULL,
    country NVARCHAR(100) NULL,
    city NVARCHAR(100) NULL,
    post_code NVARCHAR(400) NULL,
    cust_guid_key NVARCHAR(100) NULL,
    code_name NVARCHAR(400) NULL,
    msg TEXT NULL
);

DESC tb_Cust_addr_upload_temp;

INSERT tb_Cust_addr_upload_temp
(
    type,
    SubCod,
    company_name,
    address,
    contact_person,
    phone,
    fax,
    email,
    seqno,
    address2,
    address3,
    country,
    city,
    post_code,
    cust_guid_key,
    code_name,
    msg
)
VALUES
(
    "WARNING",
    "435325",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    45,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    64,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "622345",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "931222",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    95,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "435325",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    45,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    64,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "622345",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "931222",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    95,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "435325",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    45,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    64,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "934535",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "622345",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    42,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
),
(
    "WARNING",
    "931222",
    "TESLA",
    "NEW DELHI",
    "Henry John",
    "+250943543",
    "3452353",
    "changes@gmail.com",
    95,
    "address 1",
    "address 3",
    "INDIA",
    "NEW DELHI",
    "432523535",
    "325432534",
    "WARNING_34523",
    "Please check table of items before saving related customer"
);

CREATE TABLE tb_Cust_brand
(
    guid_key NVARCHAR(100) NOT NULL PRIMARY KEY,
    cust_guid_key NVARCHAR(100) NULL,
    brand_guid_key NVARCHAR(100) NULL,
    company_guid_key NVARCHAR(100) NULL,
    emailto NVARCHAR(1000) NULL
);

DESC tb_Cust_brand;

INSERT tb_Cust_brand
(
    guid_key,
    cust_guid_key,
    brand_guid_key,
    company_guid_key,
    emailto
)
VALUES
(
    "322",
    "352345",
    "425345",
    "843534",
    "deo@gmail.com"
),
(
    "124",
    "352345",
    "425345",
    "843534",
    "deous@gmail.com"
),
(
    "125",
    "352345",
    "425345",
    "843534",
    "david@gmail.com"
),
(
    "127",
    "352345",
    "425345",
    "843534",
    "john@gmail.com"
),
(
    "128",
    "352345",
    "425345",
    "843534",
    "ketty@gmail.com"
),
(
    "223",
    "352345",
    "425345",
    "843534",
    "deo@gmail.com"
),
(
    "224",
    "352345",
    "425345",
    "843534",
    "deous@gmail.com"
),
(
    "225",
    "352345",
    "425345",
    "843534",
    "david@gmail.com"
),
(
    "227",
    "352345",
    "425345",
    "843534",
    "john@gmail.com"
),
(
    "228",
    "352345",
    "425345",
    "843534",
    "ketty@gmail.com"
);

CREATE TABLE tb_Cust_delivery_addr
(
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    guid_key NVARCHAR(100) NULL,
    cust_guid_key NVARCHAR(100) NULL,
    company_name NVARCHAR(600) NULL,
    delivery_code NVARCHAR(100) NULL,
    address NVARCHAR(800) NULL,
    contact_person NVARCHAR(300) NULL,
    phone NVARCHAR(500) NULL,
    fax NVARCHAR(500) NULL,
    email NVARCHAR(1000) NULL,
    seqno INT(40) NULL,
    address2 NVARCHAR(800) NULL,
    address3 NVARCHAR(800) NULL,
    country NVARCHAR(100) NULL,
    city NVARCHAR(100) NULL,
    post_code NVARCHAR(400) NULL,
    AddressId NVARCHAR(100) NULL,
    ContactId NVARCHAR(100) NULL
);

DESC tb_Cust_delivery_addr;

INSERT INTO tb_Cust_delivery_addr
(
    guid_key,
    cust_guid_key,
    company_name,
    delivery_code,
    address,
    contact_person,
    phone,
    fax,
    email,
    seqno ,
    address2,
    address3,
    country,
    city,
    post_code,
    AddressId,
    ContactId
)
VALUES
(
    "3453523",
    "9534534",
    "TESLA_4535",
    "IND_34353",
    "Bangalore",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "Hyderabad",
    "CHENNAI",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
),
(
    "3453523",
    "9534534",
    "Hyderabad",
    "IND_34353",
    "Kolkata",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "BENGALURU",
    "CHENNAI",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
),
(
    "3453523",
    "9534534",
    "TESLA_4535",
    "IND_34353",
    "Surat",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "BENGALURU",
    "CHENNAI",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
),
(
    "3453523",
    "9534534",
    "TESLA_4535",
    "IND_34353",
    "Jaipur",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "BENGALURU",
    "Jaipur",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
),
(
    "3453523",
    "9534534",
    "TESLA_4535",
    "IND_34353",
    "Pune",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "BENGALURU",
    "Pune",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
),
(
    "3453523",
    "9534534",
    "TESLA_4535",
    "IND_34353",
    "Bangalore",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "Hyderabad",
    "CHENNAI",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
),
(
    "3453523",
    "9534534",
    "Hyderabad",
    "IND_34353",
    "Kolkata",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "BENGALURU",
    "CHENNAI",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
),
(
    "3453523",
    "9534534",
    "TESLA_4535",
    "IND_34353",
    "Surat",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "BENGALURU",
    "CHENNAI",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
),
(
    "3453523",
    "9534534",
    "TESLA_4535",
    "IND_34353",
    "Jaipur",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "BENGALURU",
    "Jaipur",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
),
(
    "3453523",
    "9534534",
    "TESLA_4535",
    "IND_34353",
    "Pune",
    "John Doe",
    "+25078234234",
    "23423423",
    "tesla@gmail.com",
    12,
    "MOMBAI",
    "BENGALURU",
    "Pune",
    "HYDERABAD",
    "34524535",
    "34535345",
    "435353544"
);

CREATE TABLE tb_Cust_FactoryCode
(
    guid_key VARCHAR(50) PRIMARY KEY NOT NULL,
    SubCod NVARCHAR(100) NULL,
    FactoryCode NVARCHAR(100) NULL,
    SeqNo INT(4) NULL
);

DESC tb_Cust_FactoryCode;

INSERT INTO tb_Cust_FactoryCode
(
    guid_key,
    SubCod,
    FactoryCode,
    SeqNo
)
VALUES
(
    "82452",
    "546",
    "code_43534",
    23
),
(
    "82345",
    "tesla_india_435345",
    "code_43534",
    345
),
(
    "82453",
    "tesla_india_435345",
    "code_43534",
    12
),
(
    "42433",
    "tesla_india_435345",
    "code_43534",
    23
),
(
    "934654",
    "546",
    "code_43534",
    74
),
(
    "62345",
    "tesla_india_435345",
    "code_43534",
    424
),
(
    "962453",
    "tesla_india_435345",
    "code_43534",
    94
),
(
    "92433",
    "tesla_india_435345",
    "code_43534",
    65
);

CREATE TABLE tb_D365Address
(
    GuidKey NVARCHAR(100) NOT NULL PRIMARY KEY,
    DynCustomerID NVARCHAR(100) NULL,
    DynAddressID NVARCHAR(100) NULL,
    AddressType NVARCHAR(100) NULL,
    IsPrimary NVARCHAR(20) NULL,
    Name NVARCHAR(500) NULL,
    Address TEXT NULL,
    Zip NVARCHAR(400) NULL,
    City NVARCHAR(100) NULL,
    CountryCode NVARCHAR(100) NULL,
    DeletedInDyn NVARCHAR(20) NULL,
    FormattedAddress TEXT NULL,
    ModifiedDate DATETIME(6) NULL,
    UpdateDate DATETIME(6) NULL
);

DESC tb_D365Address;

INSERT INTO tb_D365Address
VALUES
(
    "4452345",
    "345234535",
    "34523453",
    "79787987",
    "Y",
    "Bangalore",
    "Karnataka down town",
    "3453543",
    "Mumbai",
    "3452345",
    "23534545",
    "MUMBAI",
    "2022-03-04 12:03:23",
    "2022-06-04 18:03:23"
),
(
    "543254",
    "345234535",
    "34523453",
    "79787987",
    "Y",
    "Chennai",
    "Tamil Nadu down town",
    "3453543",
    "Mumbai",
    "3452345",
    "23534545",
    "MUMBAI",
    "2022-03-04 12:03:23",
    "2022-06-04 18:03:23"
),
(
    "7452345",
    "345234535",
    "34523453",
    "79787987",
    "Y",
    "Kolkata",
    "Kolkata down town",
    "3453543",
    "Kolkata",
    "3452345",
    "23534545",
    "MUMBAI",
    "2022-03-04 12:03:23",
    "2022-06-04 18:03:23"
),
(
    "9952345",
    "345234535",
    "34523453",
    "79787987",
    "Y",
    "Mumbai",
    "Mumbai down town",
    "3453543",
    "Mumbai",
    "3452345",
    "23534545",
    "MUMBAI",
    "2022-03-04 12:03:23",
    "2022-06-04 18:03:23"
),
(
    "5752345",
    "345234535",
    "34523453",
    "79787987",
    "Y",
    "Jaipur",
    "Jaipur down town",
    "3453543",
    "Jaipur",
    "3452345",
    "23534545",
    "Rajasthan",
    "2022-03-04 12:03:23",
    "2022-06-04 18:03:23"
),
(
    "8052345",
    "345234535",
    "34523453",
    "79787987",
    "Y",
    "Kochi",
    "Kochi down town",
    "3453543",
    "Kochi",
    "3452345",
    "23534545",
    "Kerela",
    "2022-03-04 12:03:23",
    "2022-06-04 18:03:23"
),
(
    "9002345",
    "345234535",
    "34523453",
    "79787987",
    "Y",
    "Trivandrum",
    "Trivandrum down town",
    "3453543",
    "Trivandrum",
    "3452345",
    "23534545",
    "Kerela",
    "2022-03-04 12:03:23",
    "2022-06-04 18:03:23"
);

CREATE TABLE tb_D365Contact
(
    GuidKey NVARCHAR(100) NOT NULL PRIMARY KEY,
    DynCustomerID NVARCHAR(100) NULL,
    DynContactID NVARCHAR(100) NULL,
    ContactType NVARCHAR(100) NULL,
    ContactTitle NVARCHAR(500) NULL,
    FirstName NVARCHAR(500) NULL,
    MiddelName NVARCHAR(500) NULL,
    LastName NVARCHAR(500) NULL,
    FullName NVARCHAR(500) NULL,
    Email TEXT NULL,
    Phone NVARCHAR(500) NULL,
    Fax NVARCHAR(500) NULL,
    DeletedInDyn NVARCHAR(20) NULL,
    ModifiedDate DATETIME(6) NULL,
    UpdateDate DATETIME(6) NULL
);

DESC tb_D365Contact;

INSERT INTO tb_D365Contact
VALUES
(
    "98452353",
    "2435354",
    "7399534",
    "Soft Contact Lenses",
    "Soft Contact Lenses",
    "John",
    "",
    "Doe",
    "John doe",
    "doe@gmail.com",
    "+2507835345435",
    "3452354",
    "DELETED",
    "2022-03-05 12:03:12",
    "2022-03-05 12:03:12"
),
(
    "9452353",
    "2435354",
    "7399534",
    "Soft Contact Lenses",
    "Soft Contact Lenses",
    "John",
    "",
    "Peter",
    "John doe",
    "doe@gmail.com",
    "+2507453434",
    "3452354",
    "DELETED",
    "2022-03-05 12:03:12",
    "2022-03-05 12:03:12"
),
(
    "7452353",
    "2435354",
    "7399534",
    "Soft Contact Lenses",
    "Soft Contact Lenses",
    "John",
    "",
    "Peter",
    "John doe",
    "peter@gmail.com",
    "+250783450345",
    "3452354",
    "DELETED",
    "2022-03-05 12:03:12",
    "2022-03-05 12:03:12"
),
(
    "5652353",
    "2435354",
    "7399534",
    "Soft Contact Lenses",
    "Soft Contact Lenses",
    "Luc",
    "",
    "Doe",
    "John doe",
    "Luc@gmail.com",
    "+2507345345",
    "3452354",
    "DELETED",
    "2022-03-05 12:03:12",
    "2022-03-05 12:03:12"
);

CREATE TABLE tb_CountryCode(
    id INT(4) AUTO_INCREMENT NOT NULL,
    guid_key NVARCHAR(100) NOT NULL,
    Country_Type NVARCHAR(20) NULL,
    country_code NVARCHAR(20) NULL,
    country_name NVARCHAR(100) NULL,
    seqno INT(4) NULL,
    CONSTRAINT PK_tb_CountryCode PRIMARY KEY(id, guid_key)
);
DESC tb_CountryCode;
INSERT INTO
    tb_CountryCode(
        guid_key,
        Country_Type,
        country_code,
        country_name,
        seqno
    )
VALUES
    (
        "83568683-2d56-4cef-860d-da02c7b639ee",
        "IA200001 CH-GD",
        "C00001",
        12
    ),
    (
        "9363955-84h4-4cef-860d-da02c7b639ee",
        "IA200001 CH-GD",
        "C00002",
        3254
    ),
    (
        "0037645-2d56-4cef-860d-da02c7b639ee",
        "IA2004951 CH-GD",
        "C00003",
        1243
    ),
    (
        "0749864-84h4-4cef-860d-da02c7b639ee",
        "IA2h5001 CH-GD",
        "C00004",
        3884
    ),
    (
        "0884584-84h4-4cef-860d-da02c7b639ee",
        "IA298401 CH-GD",
        "C00005",
        93775
    ),
    (
        "07430824-973-4cef-860d-da02c7b639ee",
        "I3j55001 CH-GD",
        "C00004",
        1193
    ),
    (
        "0809344-84h4-4cef-860d-da02c7b639ee",
        "IA24301 CH-GD",
        "C00006",
        17
    ),
    (
        "9992664-973-4cef-860d-da02c7b639ee",
        "I3j55001 CH-GD",
        "C00007",
        "Canada",
        90
    ),
    (
        "8899107-84h4-4cef-860d-da02c7b639ee",
        "IA24301 CH-GD",
        "C00008",
        "Tanzania",
        100
    ),
    (
        "9992664-973-4cef-860d-da02c7b639ee",
        "I3j55001 CH-GD",
        "C00009",
        "Japan",
        232074
    ),
    (
        "7783645-84h4-4cef-860d-da02c7b639ee",
        "IA24301 CH-GD",
        "C000010",
        "South Korea",
        8873
    );

























CREATE TABLE tb_countrycode_qr (
    guid_key NVARCHAR(100) NOT NULL,
    brandid NVARCHAR(100) NULL,
    country_code_key NVARCHAR(100) NULL,
    seqno INT(4) NULL,
    c_url NVARCHAR(300) NULL,
    icon_symbol NVARCHAR(200) NULL,
    alias NVARCHAR(100) NULL,
    show_status CHAR(1) NULL
);
DESC tb_countrycode_qr
INSERT INTO
    tb_countrycode_qr(
        guid_key,
        brandid,
        country_code_key,
        seqno,
        c_url,
        icon_symbol,
        alias,
        show_status
    )
VALUES
    (
        "83568683-2d56-4cef-860d-da02c7b639ee",
        "IA200001 CH-GD",
        "C00001",
        12,
        "curl example.com",
        "example icon",
        "alias",
        "T"
    ),
    (
        "9363955-84h4-4cef-860d-da02c7b639ee",
        "IA200001 CH-GD",
        "C00002",
        3254,
        "curl example.com 2",
        "example icon 2",
        "alias1",
        "T"
    ),
    (
        "0037645-2d56-4cef-860d-da02c7b639ee",
        "IA2004951 CH-GD",
        "C00003",
        1243,
        "curl example.com 3",
        "example icon 3",
        "alias3",
        "F"
    ),
    (
        "0749864-84h4-4cef-860d-da02c7b639ee",
        "IA2h5001 CH-GD",
        "C00004",
        3884,
        "curl example.com 4",
        "example icon 4",
        "alias 4",
        "T"
    ),
    (
        "0884584-84h4-4cef-860d-da02c7b639ee",
        "IA298401 CH-GD",
        "C00005",
        93775,
        "curl example.com 5",
        "example icon 5",
        "alias 5",
        "F"
    ),
    (
        "07430824-973-4cef-860d-da02c7b639ee",
        "I3j55001 CH-GD",
        "C00004",
        1193,
        "curl example.com 6",
        "example icon 6",
        "alias 6",
        "F"
    ),
    (
        "0809344-84h4-4cef-860d-da02c7b639ee",
        "IA24301 CH-GD",
        "C00006",
        17,
        "curl example.com 7",
        "example icon 7",
        "alias 7",
        "T"
    ),
    (
        "9992664-973-4cef-860d-da02c7b639ee",
        "I3j55001 CH-GD",
        "C00007",
        90,
        "curl example.com 8",
        "example icon 8",
        "alias 8",
        "F"
    ),
    (
        "8899107-84h4-4cef-860d-da02c7b639ee",
        "IA24301 CH-GD",
        "C00008",
        100,
        "curl example.com 9",
        "example icon 9",
        "alias 9",
        "T"
    ),
    (
        "9992664-973-4cef-860d-da02c7b639ee",
        "I3j55001 CH-GD",
        "C00009",
        232074,
        "curl example.com 10",
        "example icon 10",
        "alias 10",
        "T"
    );
CREATE TABLE tb_cust(
    id int(4) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    guid_key NVARCHAR(100) NULL,
    SubCod NVARCHAR(300) NULL,
    EngName NVARCHAR(1000) NULL,
    ChiName NVARCHAR(400) NULL,
    Dept VARCHAR(50) NULL,
    erp_name NVARCHAR(100) NULL,
    rights_group CHAR(1),
    admin NVARCHAR(100) NULL,
    passwd VARCHAR(50) NULL,
    passwd2 NVARCHAR(50),
    leadSource NVARCHAR(100) NULL,
    Tel VARCHAR(25) NULL,
    Contact NVARCHAR(510) NULL,
    Fax VARCHAR(25) NULL,
    Mobile VARCHAR(25) NULL,
    Gemail NVARCHAR(1000) NULL,
    Factory_Code NVARCHAR(510) NULL,
    URL VARCHAR(100) NULL,
    Office_EngAddr NVARCHAR(1000) NULL,
    Office_ChiAddr NVARCHAR(1000) NULL,
    Rmk NVARCHAR(510) NULL,
    PTerm VARCHAR(10) NULL,
    Discount_Rate INT(9) NULL,
    CLimit INT(9) NULL,
    Business_Registration_No VARCHAR(50) NULL,
    employee INT(4) NULL,
    Delivery_CpyName NVARCHAR(50) NULL,
    Delivery_Phone NVARCHAR(100) NULL,
    Delivery_Fax NVARCHAR(100) NULL,
    Delivery_Email NVARCHAR(100) NULL,
    Delivery_Contact NVARCHAR(100) NULL,
    Delivery_Address NVARCHAR(1000) NULL,
    lastAdminLogon DATETIME(6) NULL,
    Created_date DATETIME(6) NULL,
    Created_by NVARCHAR(100) NULL,
    last_updated_by NVARCHAR(100) NULL,
    last_updated_date DATETIME(6) NULL,
    brand_orderfrom INT(4) NULL,
    Country NVARCHAR(20) NULL,
    City NVARCHAR(20) NULL,
    Post_code NVARCHAR(20) NULL,
    State INT(4) NULL,
    ERP_Customer_No NVARCHAR(200) NULL,
    lineofbusiness NVARCHAR(100) NULL,
    currency NVARCHAR(40) NULL,
    segmentid NVARCHAR(510) NULL,
    freedelivery NVARCHAR(100) NULL,
    paymentterm NVARCHAR(100) NULL,
    deliveryterm NVARCHAR(100) NULL,
    paymenttermdescription NVARCHAR(2000) NULL,
    CreateType NVARCHAR(100) NULL,
    DarftEmail NVARCHAR(50) NULL,
    AutoArtworkPDFModel NVARCHAR(60) NULL,
    OwnerAuthority CHAR(1) NULL,
    IsModify BIT(8) NULL,
    DownProFileStatus CHAR(1) NULL,
    MyOrder CHAR(1) NULL,
    enablePrint CHAR(1) NULL,
    AutoArtworkPDFModelForCS NVARCHAR(100) NULL,
    ClientCode NVARCHAR(400) NULL,
    DynCustomerID NVARCHAR(100) NULL
);
DESC tb_cust;

INSERT INTO
    tb_cust(
        guid_key,
        SubCod,
        EngName,
        ChiName,
        Dept,
        erp_name,
        rights_group,
        admin,
        passwd,
        passwd2,
        leadSource,
        Tel,
        Contact,
        Fax,
        Mobile,
        Gemail,
        Factory_Code,
        URL,
        Office_EngAddr,
        Office_ChiAddr,
        Rmk,
        PTerm,
        Discount_Rate,
        CLimit,
        Business_Registration_No,
        employee,
        Delivery_CpyName,
        Delivery_Phone,
        Delivery_Fax,
        Delivery_Email,
        Delivery_Contact,
        Delivery_Address,
        lastAdminLogon,
        Created_date,
        Created_by,
        last_updated_by,
        last_updated_date,
        brand_orderfrom,
        Country,
        City,
        Post_code,
        State,
        ERP_Customer_No,
        lineofbusiness,
        currency,
        segmentid,
        freedelivery,
        paymentterm,
        deliveryterm,
        paymenttermdescription,
        CreateType,
        DarftEmail,
        AutoArtworkPDFModel,
        OwnerAuthority,
        IsModify,
        DownProFileStatus,
        MyOrder,
        enablePrint,
        AutoArtworkPDFModelForCS,
        ClientCode,
        DynCustomerID
    )
VALUES
    (
        "83568683-2d56-4cef-860d-da02c7b639ee",
        "S00001",
        "Jean",
        "Paul",
        "Dept1",
        "err_name",
        "R",
        "jean",
        "jean@123",
        "jean@123",
        "leadsource",
        "7342-453-535",
        "842-535-245",
        "-",
        "mobile",
        "gmail",
        "F0001",
        "https://example.com",
        "--------------",
        "--------------",
        "rmk",
        "pterm",
        25,
        10,
        "09876543234",
        8398,
        "XXXXXXXX",
        "delivphone",
        "delivfax",
        "deli@gmail.com",
        "delivery-contact",
        "--------------",
        "2021-02-12",
        "2021-02-08",
        "XX YY",
        "XX YY",
        "2021-01-18",
        123,
        "IA200001 CH-GD",
        "IA200001SZ",
        "IA200001 CH-199",
        3883,
        "ERP_Customer_No",
        "lineofbusiness",
        "$$$",
        "933-43253-5354",
        "free delivery",
        "payment term",
        "delivery term",
        "paymenttermdescription",
        "CreateType",
        "draft mail",
        "AutoArtworkPDFModel",
        "Y",
        B'11111110',
        "N",
        "4",
        "T",
        "AutoArtworkPDFModelForCS",
        "client code",
        "DynCustomerID"
    );


CREATE TABLE tb_Cust_invoice_addr(
    guid_key NVARCHAR(100) NOT NULL PRIMARY KEY,
    SubCod NVARCHAR(500) NULL,
    company_name NVARCHAR(500) NULL,
    address NVARCHAR(500) NULL,
    contact_person NVARCHAR(800) NULL,
    phone NVARCHAR(500) NULL,
    fax NVARCHAR(500) NULL,
    email NVARCHAR(1000) NULL,
    seqno INT(4) NULL,
    address2 NVARCHAR(800) NULL,
    address3 NVARCHAR(800) NULL,
    cust_guid_key NVARCHAR(100) NULL,
    delivery_code NVARCHAR(200) NULL,
    invoice_code NVARCHAR(200) NULL,
    CreateDtae DATETIME(6) NULL,
    AddressId NVARCHAR(100) NULL,
    ContactId NVARCHAR(100) NULL
);
DESC tb_Cust_invoice_addr;
INSERT INTO
    tb_Cust_invoice_addr(
        guid_key,
        SubCod,
        company_name,
        address,
        contact_person,
        phone,
        fax,
        email,
        seqno,
        address2,
        address3,
        cust_guid_key,
        delivery_code,
        invoice_code,
        CreateDtae,
        AddressId,
        ContactId
    )
VALUES
    (
        "9003944-2d56-4cef-860d-da02c7b639ee",
        "S0001",
        "xxxx",
        "----------",
        "X-X-X-X",
        "424-535-245",
        "-",
        "",
        2938,
        "----------",
        "----------",
        "9283474-2d56-4cef-860d-da02c7b639ee",
        "765342535",
        "IC0937473",
        "2021-04-12",
        "AD--------",
        "CI987654"
    ),
    (
        "0992374-2d56-4cef-860d-da02c7b639ee",
        "S0002",
        "xxxx",
        "----------",
        "X-X-X-X",
        "424-535-245",
        "-",
        "",
        4235,
        "----------",
        "----------",
        "335563-2d56-4cef-860d-da02c7b639ee",
        "765342535",
        "IC0937473",
        "2021-04-12",
        "AD--------",
        "CI987654"
    ),
    (
        "223843-2d56-4cef-860d-da02c7b639ee",
        "S0003",
        "xxxx",
        "----------",
        "X-X-X-X",
        "424-535-245",
        "-",
        "",
        1102,
        "----------",
        "----------",
        "9283474-2d56-4cef-860d-da02c7b639ee",
        "765342535",
        "IC0937473",
        "2021-04-12",
        "AD--------",
        "CI987654"
    ),
    (
        "993746-2d56-4cef-860d-da02c7b639ee",
        "S0004",
        "xxxx",
        "----------",
        "X-X-X-X",
        "424-535-245",
        "-",
        "",
        9937,
        "----------",
        "----------",
        "9283474-2d56-4cef-860d-da02c7b639ee",
        "765342535",
        "IC0937473",
        "2021-04-12",
        "AD--------",
        "CI987654"
    ),
    (
        "2998730-2d56-4cef-860d-da02c7b639ee",
        "S0006",
        "xxxx",
        "----------",
        "X-X-X-X",
        "424-535-245",
        "-",
        "",
        4353,
        "----------",
        "----------",
        "9283474-2d56-4cef-860d-da02c7b639ee",
        "765342535",
        "IC0937473",
        "2021-04-12",
        "AD--------",
        "CI987654"
    ),
    (
        "298746-2d56-4cef-860d-da02c7b639ee",
        "S0007",
        "xxxx",
        "----------",
        "X-X-X-X",
        "424-535-245",
        "-",
        "",
        445,
        "----------",
        "----------",
        "335563-2d56-4cef-860d-da02c7b639ee",
        "765342535",
        "IC0937473",
        "2021-04-12",
        "AD--------",
        "CI987654"
    ),
    (
        "202765-2d56-4cef-860d-da02c7b639ee",
        "S0008",
        "xxxx",
        "----------",
        "X-X-X-X",
        "424-535-245",
        "-",
        "",
        1102,
        "----------",
        "----------",
        "9283474-2d56-4cef-860d-da02c7b639ee",
        "765342535",
        "IC0937473",
        "2021-04-12",
        "AD--------",
        "CI987654"
    ),
    (
        "48885-2d56-4cef-860d-da02c7b639ee",
        "S00010",
        "xxxx",
        "----------",
        "X-X-X-X",
        "424-535-245",
        "-",
        "",
        9937,
        "----------",
        "----------",
        "9283474-2d56-4cef-860d-da02c7b639ee",
        "765342535",
        "IC0937473",
        "2021-04-12",
        "AD--------",
        "CI987654"
    );