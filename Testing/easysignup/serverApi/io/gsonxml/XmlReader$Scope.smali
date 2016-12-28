.class final enum Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
.super Ljava/lang/Enum;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_EMBEDDED_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_PRIMITIVE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

.field public static final enum NAME:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

.field public static final enum PRIMITIVE_VALUE:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;


# instance fields
.field final insideArray:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 26
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_OBJECT"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 28
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_ARRAY"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 30
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_EMBEDDED_ARRAY"

    invoke-direct {v0, v1, v5, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 32
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_PRIMITIVE_EMBEDDED_ARRAY"

    invoke-direct {v0, v1, v6, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 34
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_PRIMITIVE_ARRAY"

    invoke-direct {v0, v1, v7, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 36
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    const-string v1, "PRIMITIVE_VALUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 38
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    const-string v1, "NAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->NAME:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->$VALUES:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    #unknown opcode: 0x73
    nop
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p3, "insideArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-boolean p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->insideArray:Z

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->$VALUES:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    invoke-virtual {v0}, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/XmlReader$Scope;

    return-object v0
.end method
