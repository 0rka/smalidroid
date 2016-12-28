.class final Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XmlTokenInfo"
.end annotation


# instance fields
.field attributesData:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

.field name:Ljava/lang/String;

.field ns:Ljava/lang/String;

.field type:I

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$1;

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 765
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 766
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 767
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    .line 768
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    .line 769
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    .line 770
    return-void
.end method

.method public getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xml "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5c

    const-string v0, "start"

    :goto_12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    if-eqz v0, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5c
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_64

    const-string v0, "end"

    goto :goto_12

    :cond_64
    const-string v0, "value"

    goto :goto_12

    :cond_67
    const-string v0, ""

    goto :goto_53
.end method
