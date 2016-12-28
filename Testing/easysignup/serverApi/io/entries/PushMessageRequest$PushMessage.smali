.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;
.super Ljava/lang/Object;
.source "PushMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushMessage"
.end annotation


# instance fields
.field private desc:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private ope:I

.field private pkg:Ljava/lang/String;

.field private push_type:Ljava/lang/String;

.field private ti:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "push_type"    # Ljava/lang/String;
    .param p2, "ti"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "ope"    # I
    .param p7, "img"    # Ljava/lang/String;
    .param p8, "ext"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->push_type:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->ti:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->desc:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->pkg:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->url:Ljava/lang/String;

    .line 63
    iput p6, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->ope:I

    .line 64
    iput-object p7, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->img:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->ext:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenType()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->ope:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->ti:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->desc:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 2
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->ext:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .registers 2
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->img:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setOpenType(I)V
    .registers 2
    .param p1, "openType"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->ope:I

    .line 86
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "packge"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->pkg:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->ti:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest$PushMessage;->url:Ljava/lang/String;

    .line 82
    return-void
.end method
