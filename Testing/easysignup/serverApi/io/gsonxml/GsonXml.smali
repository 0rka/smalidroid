.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;
.super Ljava/lang/Object;
.source "GsonXml.java"


# instance fields
.field private final core:Lcom/google/gson/Gson;

.field private final options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

.field private final xmlParserCreator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;)V
    .registers 6
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "xmlParserCreator"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;
    .param p3, "options"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p2, :cond_d

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "XmlParserCreator is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_d
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->xmlParserCreator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;

    .line 46
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    .line 47
    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 85
    if-eqz p0, :cond_20

    :try_start_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_20

    .line 86
    new-instance v1, Lcom/google/gson/JsonIOException;

    const-string v2, "JSON document was not fully consumed."

    invoke-direct {v1, v2}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_2 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_19

    .line 88
    :catch_12
    move-exception v0

    .line 89
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Lcom/google/gson/stream/MalformedJsonException;
    :catch_19
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20
    return-void
.end method

.method private static changeEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 184
    if-nez p0, :cond_3

    .line 187
    .end local p0    # "str":Ljava/lang/String;
    :goto_2
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_3
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method private parsingObject2Xml(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 150
    .local v4, "tagClass":Ljava/lang/Class;
    const-string v6, "<"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 154
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const-string v3, ""

    .line 155
    .local v3, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    array-length v6, v0

    if-ge v1, v6, :cond_64

    .line 156
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_36

    .line 155
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 160
    :cond_36
    const-string v6, "value"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 163
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v6, "=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->changeEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 169
    :cond_64
    const-string v6, ">"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v6, "value"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 171
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_80

    .line 174
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->changeEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_80
    const-string v6, "</"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v6, ">\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private parsingObject2XmlForMap(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 131
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    .local v0, "iters":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v1, ""

    .line 133
    .local v1, "key":Ljava/lang/String;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "key":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 135
    .restart local v1    # "key":Ljava/lang/String;
    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->changeEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 143
    :cond_43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public fromXml(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .param p1, "reader"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXml(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;,
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->xmlParserCreator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    invoke-direct {v0, p1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;-><init>(Ljava/io/Reader;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;)V

    .line 70
    .local v0, "jsonReader":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->fromXml(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 72
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromXml(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 7
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->xmlParserCreator:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->options:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;

    invoke-direct {v0, p1, v2, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;-><init>(Ljava/io/Reader;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlParserCreator;Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Options;)V

    .line 78
    .local v0, "jsonReader":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->fromXml(Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 80
    return-object v1
.end method

.method public fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromXml(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_4

    .line 61
    const/4 v1, 0x0

    .line 65
    :goto_3
    return-object v1

    .line 63
    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->fromXml(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "target":Ljava/lang/Object;, "TT;"
    goto :goto_3
.end method

.method public getGson()Lcom/google/gson/Gson;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->core:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/google/gson/Gson;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXml(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, "sb":Ljava/lang/StringBuilder;
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_3a

    move-object v2, p1

    .line 113
    check-cast v2, Ljava/util/ArrayList;

    .line 114
    .local v2, "objectList":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_48

    .line 115
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->parsingObject2Xml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 117
    .end local v0    # "i":I
    .end local v2    # "objectList":Ljava/util/ArrayList;
    :cond_3a
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_69

    move-object v1, p1

    .line 118
    check-cast v1, Ljava/util/HashMap;

    .line 119
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->parsingObject2XmlForMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_48
    :goto_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 121
    :cond_69
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->parsingObject2Xml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48
.end method
