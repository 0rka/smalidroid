.class public Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;
.super Landroid/os/AsyncTask;
.source "CheckURLTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static setPP:Z

.field public static setTNC:Z


# instance fields
.field cLNC:Ljava/lang/String;

.field cMCC:Ljava/lang/String;

.field mDocType:Ljava/lang/String;

.field mMenu:Ljava/lang/String;

.field mTermsURL:Ljava/lang/String;

.field mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;

    #disallowed odex opcode
    #iput-wide-volatile v0, v1, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->TAG:Ljava/lang/String;

    .line 25
    sput-boolean v1, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->setTNC:Z

    .line 27
    sput-boolean v1, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->setPP:Z

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "mType"    # Ljava/lang/String;
    .param p2, "Mcc"    # Ljava/lang/String;
    .param p3, "Lnc"    # Ljava/lang/String;
    .param p4, "docType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->cMCC:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->cLNC:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mMenu:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mURL:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mDocType:Ljava/lang/String;

    .line 34
    const-string v0, "http://static.bada.com/contents/legal/"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mTermsURL:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mDocType:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mMenu:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->cMCC:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->cLNC:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static requestSetUrl(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 103
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "mImsi":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "lnc":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;

    const-string v4, "tnc"

    const-string v5, "general_esu.html"

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    sget-boolean v3, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->setTNC:Z

    if-nez v3, :cond_39

    .line 110
    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;

    const-string v4, "tnc"

    const-string v5, "default"

    const-string v6, "general_esu.html"

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    :cond_39
    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;

    const-string v4, "pp"

    const-string v5, "pp_esu.html"

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    sget-boolean v3, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->setPP:Z

    if-nez v3, :cond_5b

    .line 115
    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;

    const-string v4, "pp"

    const-string v5, "default"

    const-string v6, "pp_esu.html"

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    :cond_5b
    return-void
.end method

.method private setResponseCode(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "result"    # I
    .param p2, "menu"    # Ljava/lang/String;
    .param p3, "mDocType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 86
    const-string v0, "http://static.bada.com/contents/legal/234/default/"

    .line 88
    .local v0, "mDefaultURL":Ljava/lang/String;
    const/16 v2, 0xc8

    if-eq p1, v2, :cond_27

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "mURL":Ljava/lang/String;
    const-string v2, "tnc"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 91
    sput-boolean v3, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->setTNC:Z

    .line 92
    const-string v2, "tnc_url"

    invoke-static {v2, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v1    # "mURL":Ljava/lang/String;
    :cond_27
    :goto_27
    return-void

    .line 93
    .restart local v1    # "mURL":Ljava/lang/String;
    :cond_28
    const-string v2, "pp"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 94
    sput-boolean v3, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->setPP:Z

    .line 95
    const-string v2, "pp_url"

    invoke-static {v2, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckURLTask doInBackground URL : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v4, 0x0

    .line 56
    .local v4, "responseCode":I
    :try_start_1b
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mURL:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 58
    .local v1, "con":Ljava/net/URLConnection;
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 59
    .local v3, "exitCode":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2d
    .catch Ljava/net/MalformedURLException; {:try_start_1b .. :try_end_2d} :catch_4b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2d} :catch_50

    move-result v4

    .line 66
    .end local v1    # "con":Ljava/net/URLConnection;
    .end local v3    # "exitCode":Ljava/net/HttpURLConnection;
    .end local v5    # "url":Ljava/net/URL;
    :goto_2e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckURLTask doInBackground responseCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 60
    :catch_4b
    move-exception v2

    .line 61
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2e

    .line 62
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_50
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_31

    .line 73
    const-string v0, "tnc"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 74
    sput-boolean v2, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->setTNC:Z

    .line 75
    const-string v0, "tnc_url"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1c
    :goto_1c
    return-void

    .line 76
    :cond_1d
    const-string v0, "pp"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 77
    sput-boolean v2, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->setPP:Z

    .line 78
    const-string v0, "pp_url"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 81
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mMenu:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mDocType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->setResponseCode(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mTermsURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->cMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->cLNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mDocType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mURL:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckURLTask onPreExecute Url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/ui/CheckURLTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
