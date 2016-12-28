.class public Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XmlParser"

.field private static sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# instance fields
.field private mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v1, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;

    monitor-enter v1

    .line 28
    :try_start_6
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_16

    .line 29
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 30
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 32
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_20

    .line 34
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 35
    return-void

    .line 32
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private convertValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 185
    :try_start_10
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_17} :catch_19

    move-result-object p2

    .line 210
    .end local p2    # "value":Ljava/lang/String;
    :cond_18
    :goto_18
    return-object p2

    .line 186
    .restart local p2    # "value":Ljava/lang/String;
    :catch_19
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 188
    throw v0

    .line 191
    :cond_21
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 192
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_18

    .line 193
    :cond_33
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 194
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_18

    .line 196
    :cond_45
    throw v0

    .line 201
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_46
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 202
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_18

    .line 203
    :cond_5f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 204
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_18

    .line 205
    :cond_78
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 206
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_18

    .line 207
    :cond_91
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 208
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_18
.end method

.method private findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 6
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/coreapps/easysignup/entry/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/coreapps/easysignup/entry/Entry;>;"
    :try_start_0
    const-string v1, "value"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 173
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "\'value\' should be found by EntryParserInfo."

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_10

    .line 177
    :catch_10
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    throw v0

    .line 176
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_12
    :try_start_12
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_15} :catch_10

    move-result-object v1

    return-object v1
.end method

.method private getElementValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 153
    .local v1, "object":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 155
    .local v0, "eventType":I
    :goto_7
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1a

    .line 156
    const/4 v2, 0x4

    if-ne v0, v2, :cond_13

    .line 157
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_7

    .line 163
    :cond_1a
    if-nez v1, :cond_1e

    .line 164
    const/4 v2, 0x0

    .line 167
    :goto_1d
    return-object v2

    :cond_1e
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->convertValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1d
.end method

.method private setArrayObject(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "rtnObject"    # Ljava/lang/Object;
    .param p2, "curTag"    # Ljava/lang/String;
    .param p3, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 129
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v5, Lcom/samsung/android/coreapps/easysignup/entry/EntryField;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/coreapps/easysignup/entry/EntryField;

    .line 130
    .local v4, "myArray":Lcom/samsung/android/coreapps/easysignup/entry/EntryField;
    invoke-interface {v4}, Lcom/samsung/android/coreapps/easysignup/entry/EntryField;->type()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/coreapps/easysignup/entry/Entry;

    .line 131
    .local v3, "itemOfList":Lcom/samsung/android/coreapps/easysignup/entry/Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_33

    .line 133
    invoke-interface {p3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2f

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 135
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    .end local v3    # "itemOfList":Lcom/samsung/android/coreapps/easysignup/entry/Entry;
    .end local v4    # "myArray":Lcom/samsung/android/coreapps/easysignup/entry/EntryField;
    :catch_2f
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_33
    return-void
.end method

.method private setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 143
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 144
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->convertValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 148
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_17
    return-void

    .line 145
    :catch_18
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runtime fail [fieldName]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [value]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/android/coreapps/easysignup/entry/Entry;
    .registers 14
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/samsung/android/coreapps/easysignup/entry/Entry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "rawEntry":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    .local v5, "stringReader":Ljava/io/StringReader;
    move-object v1, p2

    .line 41
    .local v1, "entry":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/coreapps/easysignup/entry/Entry;>;"
    const/4 v4, 0x0

    .line 44
    .local v4, "isPositionInitialized":Z
    :try_start_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 45
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 46
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 48
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_17} :catch_7b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_17} :catch_80

    .line 50
    .end local v5    # "stringReader":Ljava/io/StringReader;
    .local v6, "stringReader":Ljava/io/StringReader;
    :try_start_17
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 51
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 52
    .local v2, "eventType":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eventType :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "XmlParser"

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eq v2, v10, :cond_73

    .line 54
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "next eventType :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "XmlParser"

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v8, 0x2

    if-ne v2, v8, :cond_73

    .line 57
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "result"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 60
    const/4 v4, 0x1

    .line 61
    const-string v8, "start with result"

    const-string v9, "XmlParser"

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_73} :catch_90
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_73} :catch_8d

    .end local v7    # "tagName":Ljava/lang/String;
    :cond_73
    move-object v5, v6

    .line 72
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "stringReader":Ljava/io/StringReader;
    .restart local v5    # "stringReader":Ljava/io/StringReader;
    :goto_74
    if-eqz v4, :cond_85

    .line 73
    invoke-virtual {p0, v1, v10}, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->parsingEntry(Ljava/lang/Class;Z)Lcom/samsung/android/coreapps/easysignup/entry/Entry;

    move-result-object v8

    return-object v8

    .line 65
    :catch_7b
    move-exception v0

    .line 66
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7c
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_74

    .line 67
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_80
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    :goto_81
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :cond_85
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Can\'t find <return> or <result> element."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 67
    .end local v5    # "stringReader":Ljava/io/StringReader;
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "stringReader":Ljava/io/StringReader;
    :catch_8d
    move-exception v0

    move-object v5, v6

    .end local v6    # "stringReader":Ljava/io/StringReader;
    .restart local v5    # "stringReader":Ljava/io/StringReader;
    goto :goto_81

    .line 65
    .end local v5    # "stringReader":Ljava/io/StringReader;
    .restart local v6    # "stringReader":Ljava/io/StringReader;
    :catch_90
    move-exception v0

    move-object v5, v6

    .end local v6    # "stringReader":Ljava/io/StringReader;
    .restart local v5    # "stringReader":Ljava/io/StringReader;
    goto :goto_7c
.end method

.method protected parsingEntry(Ljava/lang/Class;Z)Lcom/samsung/android/coreapps/easysignup/entry/Entry;
    .registers 15
    .param p2, "withAttribute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/coreapps/easysignup/entry/Entry;",
            ">;Z)",
            "Lcom/samsung/android/coreapps/easysignup/entry/Entry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/coreapps/easysignup/entry/Entry;>;"
    const/4 v11, 0x3

    .line 81
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/entry/Entry;

    .line 83
    .local v1, "entry":Lcom/samsung/android/coreapps/easysignup/entry/Entry;
    if-eqz p2, :cond_e

    .line 84
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 87
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 88
    .local v2, "eventType":I
    :goto_14
    if-eq v2, v11, :cond_f5

    .line 89
    const/4 v9, 0x2

    if-ne v2, v9, :cond_bb

    .line 90
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "tagName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tagName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "XmlParser"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v5, 0x0

    .line 94
    .local v5, "tagField":Ljava/lang/reflect/Field;
    :try_start_38
    invoke-virtual {p1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 95
    const-class v9, Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 97
    const-string v9, "is List"

    const-string v10, "XmlParser"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .line 99
    .local v7, "type":Ljava/lang/reflect/ParameterizedType;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "XmlParser"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v4, v9, v10

    check-cast v4, Ljava/lang/Class;

    .line 101
    .local v4, "genericType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/coreapps/easysignup/entry/Entry;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "genericType :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "XmlParser"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v9, 0x1

    invoke-virtual {p0, v4, v9}, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->parsingEntry(Ljava/lang/Class;Z)Lcom/samsung/android/coreapps/easysignup/entry/Entry;

    move-result-object v8

    .line 103
    .local v8, "value":Lcom/samsung/android/coreapps/easysignup/entry/Entry;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "XmlParser"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v9, "add suceess"

    const-string v10, "XmlParser"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldException; {:try_start_38 .. :try_end_bb} :catch_d3

    .line 121
    .end local v4    # "genericType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/coreapps/easysignup/entry/Entry;>;"
    .end local v5    # "tagField":Ljava/lang/reflect/Field;
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/reflect/ParameterizedType;
    .end local v8    # "value":Lcom/samsung/android/coreapps/easysignup/entry/Entry;
    :cond_bb
    :goto_bb
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_14

    .line 107
    .restart local v5    # "tagField":Ljava/lang/reflect/Field;
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_c3
    :try_start_c3
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 108
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->getElementValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 109
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c3 .. :try_end_d2} :catch_d3

    goto :goto_bb

    .line 111
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "value":Ljava/lang/Object;
    :catch_d3
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t find variable for tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "XmlParser"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_ec
    if-eq v2, v11, :cond_bb

    .line 117
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_ec

    .line 123
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .end local v5    # "tagField":Ljava/lang/reflect/Field;
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_f5
    return-object v1
.end method
