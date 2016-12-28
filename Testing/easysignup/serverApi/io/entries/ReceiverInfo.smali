.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
.super Ljava/lang/Object;
.source "ReceiverInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo$ReceiverInfoResp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public ccc:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "ccc"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;->ccc:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;->phone_number:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static fromList(Ljava/util/ArrayList;Ljava/util/ArrayList;)[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "nationalPhoneNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "from list"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2a

    .line 14
    :cond_21
    const-string v3, "invalid argument"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v2, 0x0

    .line 24
    :cond_29
    return-object v2

    .line 18
    :cond_2a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 19
    .local v0, "count":I
    new-array v2, v0, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .line 21
    .local v2, "receiverInfos":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    if-ge v1, v0, :cond_29

    .line 22
    new-instance v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_31
.end method
