.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;
.super Lcom/google/gson/stream/JsonReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$3;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    }
.end annotation


# static fields
.field private static final END_TAG:I = 0x2

.field private static final IGNORE:I = -0x1

.field private static final START_TAG:I = 0x1

.field private static final VALUE:I = 0x3


# instance fields
.field private final attributes:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

.field private final closeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;",
            ">;"
        }
    .end annotation
.end field

.field private endReached:Z

.field private expectedToken:Lcom/google/gson/stream/JsonToken;

.field private firstStart:Z

.field private lastTextWhiteSpace:Z

.field final options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

.field private final scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;",
            ">;"
        }
    .end annotation
.end field

.field private skipping:Z

.field private textNameCounter:I

.field private token:Lcom/google/gson/stream/JsonToken;

.field private final tokensPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;",
            ">;"
        }
    .end annotation
.end field

.field private tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

.field private tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

.field private final valuesPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;",
            ">;"
        }
    .end annotation
.end field

.field private valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

.field private valuesQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

.field private final xmlParser:Lorg/xmlpull/v1/XmlPullParser;

.field private final xmlToken:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;)V
    .registers 8
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "creator"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;
    .param p3, "options"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 55
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$1;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    .line 61
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$2;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Creator;)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->firstStart:Z

    iput-boolean v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    .line 78
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-direct {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    .line 80
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-direct {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    .line 86
    iput v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->textNameCounter:I

    .line 92
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$1;)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlToken:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;

    .line 95
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;I)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->attributes:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    .line 99
    invoke-interface {p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 100
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    .line 101
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlToken:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;

    const/4 v2, -0x1

    iput v2, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 103
    :try_start_4f
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 104
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    iget-boolean v3, p3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->namespaces:Z

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_5d} :catch_5e

    .line 108
    return-void

    .line 105
    :catch_5e
    move-exception v0

    .line 106
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private adaptCurrentToken()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 216
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_8

    .line 303
    :cond_7
    :goto_7
    return-void

    .line 219
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    sget-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_7

    .line 223
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v4}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_118

    goto :goto_7

    .line 227
    :pswitch_1c
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 229
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 231
    .local v0, "lastScope":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_7

    .line 232
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v3, :cond_5a

    .line 234
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v3, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->cleanup(I)I

    .line 237
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 239
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 240
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 241
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    if-ne v0, v3, :cond_7

    .line 242
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_7

    .line 246
    :cond_5a
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 249
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size()I

    move-result v1

    .line 250
    .local v1, "pushPos":I
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v3, :cond_75

    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    if-nez v3, :cond_75

    .line 252
    invoke-direct {p0, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->fillQueues(Z)V

    .line 254
    :cond_75
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->cleanup(II)I

    move-result v1

    .line 256
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v3, :cond_93

    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v3, v4, :cond_93

    .line 258
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 261
    :cond_93
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    .line 262
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_b0

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    if-eq v3, v4, :cond_b9

    .line 263
    :cond_b0
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    .line 265
    :cond_b9
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v3, v4, :cond_7

    .line 266
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto/16 :goto_7

    .line 275
    .end local v0    # "lastScope":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    .end local v1    # "pushPos":I
    :pswitch_c8
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 276
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v3, :cond_111

    .line 278
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v3, :cond_e6

    .line 280
    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 281
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 284
    :cond_e6
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    move-result-object v3

    iget-object v2, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 285
    .local v2, "value":Ljava/lang/String;
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 286
    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 287
    sget-object v3, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 288
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 289
    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Ljava/lang/String;)V

    .line 290
    const-string v3, "$"

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 296
    .end local v2    # "value":Ljava/lang/String;
    :cond_111
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto/16 :goto_7

    .line 223
    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_c8
    .end packed-switch
.end method

.method private addTextToQueue(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "canBeAppended"    # Z

    .prologue
    .line 653
    if-eqz p2, :cond_32

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_32

    .line 654
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_31

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    iget-object v2, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 661
    :cond_31
    :goto_31
    return-void

    .line 658
    :cond_32
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 659
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    goto :goto_31
.end method

.method private addToQueue(Lcom/google/gson/stream/JsonToken;)V
    .registers 4
    .param p1, "token"    # Lcom/google/gson/stream/JsonToken;

    .prologue
    .line 426
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 427
    .local v0, "tokenRef":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;
    iput-object p1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    .line 428
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 430
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_16

    .line 431
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 432
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 437
    :goto_15
    return-void

    .line 434
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 435
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    goto :goto_15
.end method

.method private addToQueue(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;)V
    .registers 6
    .param p1, "attrData"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 482
    iget v0, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->count:I

    .line 483
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_33

    .line 484
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 486
    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 487
    iget-object v2, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 489
    :cond_33
    return-void
.end method

.method private addToQueue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 455
    .local v0, "valueRef":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 456
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 458
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    if-nez v1, :cond_1a

    .line 459
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 460
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 465
    :goto_19
    return-void

    .line 462
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 463
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    goto :goto_19
.end method

.method private dump()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scopes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Closed tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Tokens queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Values queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .registers 6
    .param p1, "token"    # Lcom/google/gson/stream/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 158
    .local v0, "actual":Lcom/google/gson/stream/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 159
    if-eq v0, p1, :cond_34

    .line 160
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected, but met "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->dump()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_34
    return-void
.end method

.method private fillQueues(Z)V
    .registers 6
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 493
    move v0, p1

    .line 495
    .local v0, "mustRepeat":Z
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->endReached:Z

    if-eqz v2, :cond_b

    :cond_9
    if-eqz v0, :cond_1e

    .line 496
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextXmlInfo()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;

    move-result-object v1

    .line 497
    .local v1, "xml":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;
    iget-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->endReached:Z

    if-eqz v2, :cond_1f

    .line 498
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->skipRoot:Z

    if-nez v2, :cond_1e

    .line 499
    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 531
    .end local v1    # "xml":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;
    :cond_1e
    :goto_1e
    return-void

    .line 503
    .restart local v1    # "xml":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;
    :cond_1f
    iget v2, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 507
    const/4 v0, 0x0

    .line 509
    iget v2, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    packed-switch v2, :pswitch_data_4a

    .line 527
    :goto_2a
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->skipping:Z

    if-eqz v2, :cond_1

    goto :goto_1e

    .line 511
    :pswitch_31
    iget-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->firstStart:Z

    if-eqz v2, :cond_3c

    .line 512
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->firstStart:Z

    .line 513
    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->processRoot(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_2a

    .line 515
    :cond_3c
    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->processStart(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_2a

    .line 519
    :pswitch_40
    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->processText(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;)Z

    move-result v0

    .line 520
    goto :goto_2a

    .line 522
    :pswitch_45
    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->processEnd(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_2a

    .line 509
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_45
        :pswitch_40
    .end packed-switch
.end method

.method private fixScopeStack()V
    .registers 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->fix(Ljava/lang/Object;)V

    .line 665
    return-void
.end method

.method static nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 741
    move-object v3, p0

    .line 742
    .local v3, "result":Ljava/lang/String;
    move-object v2, p1

    .line 743
    .local v2, "ns":Ljava/lang/String;
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_42

    .line 744
    if-eqz p2, :cond_25

    .line 745
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    .line 746
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v0, :cond_25

    .line 747
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 748
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 753
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 755
    :cond_42
    return-object v3

    .line 746
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method private nextToken()Lcom/google/gson/stream/JsonToken;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 131
    .local v0, "ref":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;
    if-nez v0, :cond_7

    .line 132
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 140
    :goto_6
    return-object v1

    .line 135
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 136
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    if-ne v0, v1, :cond_12

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 139
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->release(Ljava/lang/Object;)V

    .line 140
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_6
.end method

.method private nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;
    .registers 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 145
    .local v0, "ref":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;
    if-nez v0, :cond_c

    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No value can be given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    if-ne v0, v1, :cond_13

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 151
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->release(Ljava/lang/Object;)V

    .line 152
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 153
    return-object v0
.end method

.method private nextXmlInfo()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 378
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 380
    .local v3, "type":I
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlToken:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;

    .line 381
    .local v1, "info":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;
    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->clear()V

    .line 383
    packed-switch v3, :pswitch_data_6e

    .line 419
    :goto_10
    iput v6, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 422
    :cond_12
    :goto_12
    return-object v1

    .line 386
    :pswitch_13
    iput v5, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 387
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 388
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    .line 389
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 390
    .local v0, "aCount":I
    if-lez v0, :cond_12

    .line 391
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->attributes:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;->fill(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 392
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->attributes:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    iput-object v4, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    goto :goto_12

    .line 397
    .end local v0    # "aCount":I
    :pswitch_39
    const/4 v4, 0x2

    iput v4, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 398
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 399
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    goto :goto_12

    .line 403
    :pswitch_4d
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_62

    .line 405
    iput-boolean v5, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    .line 406
    iput v6, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    goto :goto_12

    .line 409
    :cond_62
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    .line 410
    const/4 v4, 0x3

    iput v4, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 411
    iput-object v2, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    goto :goto_12

    .line 415
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_6b
    iput-boolean v5, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->endReached:Z

    goto :goto_10

    .line 383
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_13
        :pswitch_39
        :pswitch_4d
    .end packed-switch
.end method

.method private peekNextToken()Lcom/google/gson/stream/JsonToken;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private processEnd(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;)V
    .registers 7
    .param p1, "xml"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 668
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$3;->$SwitchMap$com$samsung$android$coreapps$easysignup$serverApi$io$gsonxml$XmlReader$Scope:[I

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_a0

    .line 705
    :goto_13
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v3, :cond_96

    .line 706
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 707
    .local v2, "stackSize":I
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->namespaces:Z

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "name":Ljava/lang/String;
    :goto_2b
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    .line 709
    .local v0, "closeStack":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;>;"
    :goto_2d
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size()I

    move-result v3

    if-lez v3, :cond_7e

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;

    iget v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;->depth:I

    if-le v3, v2, :cond_7e

    .line 710
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->drop()V

    goto :goto_2d

    .line 671
    .end local v0    # "closeStack":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;>;"
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "stackSize":I
    :pswitch_41
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 672
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->textNameCounter:I

    .line 673
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_13

    .line 677
    :pswitch_4d
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->drop()V

    goto :goto_13

    .line 682
    :pswitch_53
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 683
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 684
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->fixScopeStack()V

    .line 685
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_13

    .line 690
    :pswitch_64
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 691
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_13

    .line 695
    :pswitch_6d
    iget-boolean v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    if-eqz v3, :cond_77

    .line 696
    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    .line 698
    :cond_77
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_13

    .line 707
    .restart local v2    # "stackSize":I
    :cond_7b
    iget-object v1, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    goto :goto_2b

    .line 712
    .restart local v0    # "closeStack":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;>;"
    .restart local v1    # "name":Ljava/lang/String;
    :cond_7e
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size()I

    move-result v3

    if-eqz v3, :cond_8e

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;

    iget v3, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;->depth:I

    if-ge v3, v2, :cond_97

    .line 713
    :cond_8e
    new-instance v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 718
    .end local v0    # "closeStack":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;>;"
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "stackSize":I
    :cond_96
    :goto_96
    return-void

    .line 715
    .restart local v0    # "closeStack":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack<Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;>;"
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "stackSize":I
    :cond_97
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;

    iput-object v1, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;->name:Ljava/lang/String;

    goto :goto_96

    .line 668
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_64
        :pswitch_53
        :pswitch_53
        :pswitch_64
        :pswitch_6d
        :pswitch_4d
        :pswitch_41
    .end packed-switch
.end method

.method private processRoot(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;)V
    .registers 5
    .param p1, "xml"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->skipRoot:Z

    if-nez v0, :cond_16

    .line 536
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 538
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->processStart(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;)V

    .line 562
    :goto_15
    return-void

    .line 540
    :cond_16
    iget-object v0, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    if-eqz v0, :cond_2c

    .line 542
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 543
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 544
    iget-object v0, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;)V

    goto :goto_15

    .line 548
    :cond_2c
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7e

    .line 558
    :pswitch_39
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First expectedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not begin_object/begin_array)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_5a
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 551
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_15

    .line 554
    :pswitch_67
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 555
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    :goto_76
    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_15

    :cond_7a
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    goto :goto_76

    .line 548
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_39
        :pswitch_67
    .end packed-switch
.end method

.method private processStart(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;)V
    .registers 8
    .param p1, "xml"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 566
    const/4 v3, 0x1

    .line 568
    .local v3, "processTagName":Z
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 570
    .local v2, "lastScope":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v4, :cond_51

    iget-boolean v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->insideArray:Z

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->size()I

    move-result v4

    if-lez v4, :cond_51

    .line 571
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->closeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;

    .line 572
    .local v1, "lastClosedInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;
    iget v4, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;->depth:I

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v4, v5, :cond_51

    .line 573
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    iget-boolean v4, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;->namespaces:Z

    if-eqz v4, :cond_8e

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "currentName":Ljava/lang/String;
    :goto_39
    iget-object v4, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 576
    sget-object v4, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->fixScopeStack()V

    .line 578
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lastScope":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    check-cast v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 583
    .end local v0    # "currentName":Ljava/lang/String;
    .end local v1    # "lastClosedInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;
    .restart local v2    # "lastScope":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    :cond_51
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$3;->$SwitchMap$com$samsung$android$coreapps$easysignup$serverApi$io$gsonxml$XmlReader$Scope:[I

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_be

    .line 604
    :goto_5c
    if-eqz v3, :cond_76

    .line 605
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 606
    sget-object v4, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 607
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 608
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    .line 611
    :cond_76
    iget-object v4, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    if-eqz v4, :cond_bd

    .line 612
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lastScope":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    check-cast v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 613
    .restart local v2    # "lastScope":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    if-ne v2, v4, :cond_a8

    .line 614
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Attributes data in primitive scope"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 573
    .restart local v1    # "lastClosedInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;
    :cond_8e
    iget-object v0, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    goto :goto_39

    .line 587
    .end local v1    # "lastClosedInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ClosedTag;
    :pswitch_91
    const/4 v3, 0x0

    .line 588
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_5c

    .line 593
    :pswitch_9a
    const/4 v3, 0x0

    .line 597
    :pswitch_9b
    sget-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 598
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_5c

    .line 616
    :cond_a8
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    if-ne v2, v4, :cond_b8

    .line 617
    sget-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 618
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 621
    :cond_b8
    iget-object v4, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$AttributesData;)V

    .line 623
    :cond_bd
    return-void

    .line 583
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_91
        :pswitch_91
        :pswitch_9a
        :pswitch_9a
        :pswitch_9b
    .end packed-switch
.end method

.method private processText(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;)Z
    .registers 7
    .param p1, "xml"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 626
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$3;->$SwitchMap$com$samsung$android$coreapps$easysignup$serverApi$io$gsonxml$XmlReader$Scope:[I

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_7c

    .line 648
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process text \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' inside scope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->scopeStack:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :pswitch_40
    iget-object v1, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    move v1, v2

    .line 645
    :goto_46
    return v1

    .line 633
    :pswitch_47
    iget-object v1, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    move v1, v3

    .line 634
    goto :goto_46

    .line 637
    :pswitch_4e
    const-string v0, "$"

    .line 638
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->textNameCounter:I

    if-lez v1, :cond_67

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->textNameCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    :cond_67
    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->textNameCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->textNameCounter:I

    .line 642
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 643
    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 644
    iget-object v1, p1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    move v1, v2

    .line 645
    goto :goto_46

    .line 626
    :pswitch_data_7c
    .packed-switch 0x5
        :pswitch_47
        :pswitch_40
        :pswitch_4e
    .end packed-switch
.end method

.method private pushToQueue(Lcom/google/gson/stream/JsonToken;)V
    .registers 4
    .param p1, "token"    # Lcom/google/gson/stream/JsonToken;

    .prologue
    .line 440
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 441
    .local v0, "tokenRef":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;
    iput-object p1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    .line 442
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 444
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_16

    .line 445
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 446
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 451
    :goto_15
    return-void

    .line 448
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    .line 449
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->tokensQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$TokenRef;

    goto :goto_15
.end method

.method private pushToQueue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesPool:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 469
    .local v0, "valueRef":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;
    iput-object p1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 470
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 472
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    if-nez v1, :cond_16

    .line 473
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 474
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 479
    :goto_15
    return-void

    .line 476
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->next:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    .line 477
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueueStart:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    goto :goto_15
.end method


# virtual methods
.method public beginArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 180
    return-void
.end method

.method public beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 167
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 168
    return-void
.end method

.method public endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 185
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 186
    return-void
.end method

.method public endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 174
    return-void
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 341
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    move-result-object v1

    iget-object v0, v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 343
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 347
    :cond_14
    return v2

    .line 346
    :cond_15
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 349
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> to boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 367
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 373
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->firstStart:Z

    if-eqz v1, :cond_c

    .line 308
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 326
    :goto_b
    return-object v1

    .line 311
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    if-eqz v1, :cond_21

    .line 313
    :try_start_10
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->adaptCurrentToken()V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_13} :catch_18

    .line 317
    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 318
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_b

    .line 314
    :catch_18
    move-exception v0

    .line 315
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    const-string v2, "XML parsing exception"

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 323
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_21
    const/4 v1, 0x0

    :try_start_22
    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->fillQueues(Z)V

    .line 324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_2e} :catch_2f

    goto :goto_b

    .line 328
    :catch_2f
    move-exception v0

    .line 329
    .restart local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    const-string v2, "XML parsing exception"

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public skipValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 196
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->skipping:Z

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "count":I
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    .line 201
    .local v1, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_11

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1b

    .line 202
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 208
    :cond_13
    :goto_13
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2e

    .line 209
    if-nez v0, :cond_5

    .line 211
    iput-boolean v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->skipping:Z

    .line 213
    return-void

    .line 203
    :cond_1b
    :try_start_1b
    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_23

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_26

    .line 204
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 205
    :cond_26
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->valuesQueue:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;

    if-eqz v2, :cond_13

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->nextValue()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$ValueRef;
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2e

    goto :goto_13

    .line 211
    .end local v1    # "token":Lcom/google/gson/stream/JsonToken;
    :catchall_2e
    move-exception v2

    iput-boolean v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->skipping:Z

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- XmlReader ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;->dump()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
