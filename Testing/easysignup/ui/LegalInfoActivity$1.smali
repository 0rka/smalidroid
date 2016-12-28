.class Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity$1;
.super Ljava/lang/Object;
.source "LegalInfoActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->initializePreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "key":Ljava/lang/String;
    const-string v3, "setting_terms_and_conditions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 53
    const-string v3, "tnc_url"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "mTNCUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->mDefaultURL:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "general_esu.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTNCUrl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LegalInfoActivity"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->sendToBrowser(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;Ljava/lang/String;)V

    .line 74
    .end local v2    # "mTNCUrl":Ljava/lang/String;
    :cond_4f
    :goto_4f
    const/4 v3, 0x0

    return v3

    .line 61
    :cond_51
    const-string v3, "setting_privacy_policy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 62
    const-string v3, "pp_url"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "mPPUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->mDefaultURL:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pp_esu.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPPUrl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LegalInfoActivity"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->sendToBrowser(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;Ljava/lang/String;)V

    goto :goto_4f

    .line 70
    .end local v1    # "mPPUrl":Ljava/lang/String;
    :cond_9c
    const-string v3, "setting_notice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_4f
.end method
