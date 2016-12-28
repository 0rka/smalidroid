.class public Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;
.super Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;
.source "LegalInfoActivity.java"


# static fields
.field private static final NOTICE:Ljava/lang/String; = "setting_notice"

.field private static final PRIVACY_POLICY:Ljava/lang/String; = "setting_privacy_policy"

.field private static final TAG:Ljava/lang/String; = "LegalInfoActivity"

.field private static final TERMS_AND_CONDITIONS:Ljava/lang/String; = "setting_terms_and_conditions"


# instance fields
.field private mDefaultURL:Ljava/lang/String;

.field private mPP:Landroid/preference/PreferenceScreen;

.field private mTnC:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;-><init>()V

    .line 28
    const-string v0, "http://static.bada.com/contents/legal/234/default/"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->mDefaultURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->mDefaultURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->sendToBrowser(Ljava/lang/String;)V

    return-void
.end method

.method private initializePreferences()V
    .registers 3

    .prologue
    .line 43
    const-string v1, "setting_terms_and_conditions"

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->mTnC:Landroid/preference/PreferenceScreen;

    .line 44
    const-string v1, "setting_privacy_policy"

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->mPP:Landroid/preference/PreferenceScreen;

    .line 47
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;)V

    .line 78
    .local v0, "listener":Landroid/preference/Preference$OnPreferenceClickListener;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->mTnC:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->mPP:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    return-void
.end method

.method private sendToBrowser(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    :try_start_b
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_e} :catch_f

    .line 90
    :goto_e
    return-void

    .line 87
    :catch_f
    move-exception v0

    .line 88
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ActivityNotFoundException"

    const-string v3, "LegalInfoActivity"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->legal_information:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 38
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$xml;->legal_info_preferences:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->addPreferencesFromResource(I)V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->initializePreferences()V

    .line 40
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 95
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/LegalInfoActivity;->onBackPressed()V

    .line 98
    :cond_c
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
