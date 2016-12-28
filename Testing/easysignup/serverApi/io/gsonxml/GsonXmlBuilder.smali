.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;
.super Ljava/lang/Object;
.source "GsonXmlBuilder.java"


# instance fields
.field private coreBuilder:Lcom/google/gson/GsonBuilder;

.field private final options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

.field private xmlParserCreator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    invoke-direct {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->skipRoot:Z

    .line 26
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iput-boolean v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->namespaces:Z

    .line 28
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iput-boolean v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->sameNameList:Z

    .line 29
    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;
    .registers 5

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    if-nez v0, :cond_b

    .line 190
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    .line 192
    :cond_b
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;-><init>(Lcom/google/gson/Gson;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;)V

    return-object v0
.end method

.method public setPrimitiveArrays(Z)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "primitiveArrays"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->primitiveArrays:Z

    .line 166
    return-object p0
.end method

.method public setRootArrayPrimitive(Z)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "rootArrayPrimitive"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    .line 179
    return-object p0
.end method

.method public setSameNameLists(Z)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->sameNameList:Z

    .line 141
    return-object p0
.end method

.method public setSkipRoot(Z)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->skipRoot:Z

    .line 77
    return-object p0
.end method

.method public setTreatNamespaces(Z)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->namespaces:Z

    .line 104
    return-object p0
.end method

.method public setXmlParserCreator(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;
    .registers 2
    .param p1, "xmlParserCreator"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;

    .line 50
    return-object p0
.end method

.method public wrap(Lcom/google/gson/GsonBuilder;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;
    .registers 2
    .param p1, "gsonBuilder"    # Lcom/google/gson/GsonBuilder;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    .line 38
    return-object p0
.end method
