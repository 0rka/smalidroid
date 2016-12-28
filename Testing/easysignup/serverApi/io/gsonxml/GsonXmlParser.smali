.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlParser;
.super Ljava/lang/Object;
.source "GsonXmlParser.java"


# static fields
.field public static final PARSER_CREATOR:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlParser$1;

    invoke-direct {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlParser$1;-><init>()V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlParser;->PARSER_CREATOR:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGson()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlParser;->createGson(Z)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;

    move-result-object v0

    return-object v0
.end method

.method public static createGson(Z)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;
    .registers 3
    .param p0, "namespaces"    # Z

    .prologue
    .line 26
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;

    invoke-direct {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlParser;->PARSER_CREATOR:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->setTreatNamespaces(Z)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlBuilder;->create()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;

    move-result-object v0

    return-object v0
.end method
