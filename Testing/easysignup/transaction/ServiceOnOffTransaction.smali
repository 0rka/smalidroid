.class public Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;
.super Landroid/app/Service;
.source "ServiceOnOffTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOnState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsi:Ljava/lang/String;

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mServiceId:I

.field private mServiceOffState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mServiceOnState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mSidOffList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSidOnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 42
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOnState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOnState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceOnState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 44
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ServiceOffState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceOffState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 46
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOnList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOffList:Ljava/util/ArrayList;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOffList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->notifyServiceOnResult(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->notifyServiceOffResult(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceId:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->sendServiceOnBroadcast(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->sendServiceOffBroadcast(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceOnState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceOffState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method private mergeSidList(Ljava/util/ArrayList;Landroid/content/Intent;)V
    .registers 8
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 322
    const-string v3, "service_id_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 323
    const-string v3, "service_id_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 324
    .local v0, "extraList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_19

    .line 325
    const-string v3, "invalid extra service id list"

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v0    # "extraList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_18
    :goto_18
    return-void

    .line 329
    .restart local v0    # "extraList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 330
    .local v2, "sid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 335
    .end local v0    # "extraList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sid":I
    :cond_3f
    const-string v3, "service_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 336
    const-string v3, "service_id"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 337
    .restart local v2    # "sid":I
    if-eq v2, v4, :cond_18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 338
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method private notifyServiceOffResult(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "sidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 361
    .local v2, "sid":I
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v3

    if-nez v3, :cond_43

    const/4 v1, 0x0

    .line 362
    .local v1, "result":I
    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyServiceOffResult - sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->sendServiceOffBroadcast(II)V

    goto :goto_4

    .line 361
    .end local v1    # "result":I
    :cond_43
    const/4 v1, 0x1

    goto :goto_1d

    .line 365
    .end local v2    # "sid":I
    :cond_45
    return-void
.end method

.method private notifyServiceOnResult(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .line 349
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 350
    .local v2, "sid":I
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v3

    if-ne v3, v4, :cond_44

    const/4 v1, 0x0

    .line 353
    .local v1, "result":I
    :goto_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceOnResult - sid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " / result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->sendServiceOnBroadcast(II)V

    goto :goto_5

    .end local v1    # "result":I
    :cond_44
    move v1, v4

    .line 350
    goto :goto_1e

    .line 357
    .end local v2    # "sid":I
    :cond_46
    return-void
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 288
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v2, -0x1

    .line 292
    .local v2, "token":I
    const-string v4, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 293
    const/16 v2, 0xe

    .line 294
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOnList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mergeSidList(Ljava/util/ArrayList;Landroid/content/Intent;)V

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sid on list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOnList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOnList:Ljava/util/ArrayList;

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOnList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 298
    :cond_59
    const-string v4, "cannot process empty list, ignore"

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 318
    .end local v1    # "msg":Landroid/os/Message;
    :goto_61
    return-object v1

    .line 301
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_62
    const-string v4, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 302
    const/16 v2, 0xf

    .line 303
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOffList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mergeSidList(Ljava/util/ArrayList;Landroid/content/Intent;)V

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sid off list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOffList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOffList:Ljava/util/ArrayList;

    if-eqz v4, :cond_97

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mSidOffList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 307
    :cond_97
    const-string v4, "cannot process empty list, ignore"

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 308
    goto :goto_61

    .line 311
    :cond_a0
    const-string v3, "service_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 312
    const-string v3, "service_id"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mServiceId:I

    .line 315
    :cond_b1
    iput v2, v1, Landroid/os/Message;->what:I

    .line 316
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_61
.end method

.method private sendServiceOffBroadcast(II)V
    .registers 5
    .param p1, "sid"    # I
    .param p2, "result"    # I

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 379
    const-string v1, "service_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v1, "extra_service_off_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    return-void
.end method

.method private sendServiceOnBroadcast(II)V
    .registers 5
    .param p1, "sid"    # I
    .param p2, "result"    # I

    .prologue
    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    const-string v1, "service_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string v1, "extra_service_on_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mContext:Landroid/content/Context;

    .line 263
    const-string v0, "SERVICE CREATED"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 266
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 268
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 269
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 273
    const-string v1, "onStartCommand"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-eqz p1, :cond_14

    .line 276
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_14

    .line 279
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    .end local v0    # "msg":Landroid/os/Message;
    :cond_14
    const/4 v1, 0x2

    return v1
.end method
