.class public final enum Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;
.super Ljava/lang/Enum;
.source "HttpResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

.field public static final enum ERROR:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

.field public static final enum NO_CONNECTION:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

.field public static final enum NO_CONTENT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

.field public static final enum NO_REQUEST:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

.field public static final enum SUCCESS:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->SUCCESS:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    .line 16
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    const-string v1, "NO_CONTENT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->NO_CONTENT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    .line 20
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->ERROR:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    .line 24
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    const-string v1, "NO_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->NO_REQUEST:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    .line 28
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    const-string v1, "NO_CONNECTION"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->NO_CONNECTION:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->SUCCESS:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->NO_CONTENT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->ERROR:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->NO_REQUEST:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->NO_CONNECTION:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->$VALUES:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    #unknown opcode: 0x73
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->$VALUES:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/gson/HttpResultCode;

    return-object v0
.end method
