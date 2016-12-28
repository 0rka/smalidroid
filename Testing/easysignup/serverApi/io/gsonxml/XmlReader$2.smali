.class Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$2;
.super Ljava/lang/Object;
.source "XmlReader.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator",
        "<",
        "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$2;->this$0:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;
    .registers 3

    .prologue
    .line 63
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$1;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$2;->create()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    return-object v0
.end method
