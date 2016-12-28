.class final Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributesData"
.end annotation


# instance fields
.field count:I

.field names:[Ljava/lang/String;

.field ns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;

.field values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;I)V
    .registers 4
    .param p2, "capacity"    # I

    .prologue
    .line 789
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->this$0:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->count:I

    .line 790
    invoke-direct {p0, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->createArrays(I)V

    .line 791
    return-void
.end method

.method private createArrays(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 794
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    .line 795
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    .line 796
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    .line 797
    return-void
.end method


# virtual methods
.method public fill(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 800
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 801
    .local v0, "aCount":I
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    array-length v2, v2

    if-le v0, v2, :cond_c

    .line 802
    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->createArrays(I)V

    .line 805
    :cond_c
    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->count:I

    .line 806
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_34

    .line 807
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 808
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->this$0:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->namespaces:Z

    if-eqz v2, :cond_29

    .line 809
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 811
    :cond_29
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 806
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 813
    :cond_34
    return-void
.end method

.method public getName(I)Ljava/lang/String;
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
