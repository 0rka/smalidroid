.class public Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;
.super Lcom/samsung/android/coreapps/common/ui/BaseActivity;
.source "CountryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_HIDE_COUNTRY_CALLING_CODE:Ljava/lang/String; = "extra_hide_country_calling_code"

.field public static final INTENT_MODE:Ljava/lang/String; = "mode"

.field public static final INTENT_MODE_MID:I = 0x0

.field public static final INTENT_MODE_UNMID:I = 0x1

.field public static final MAXLENGTH_LANGNAME:I = 0x1e

.field public static final POPUP_TEXT_COLOR:I

.field private static final TAG:Ljava/lang/String; = "CountryActivity"


# instance fields
.field public final TEXT_COLOR:I

.field private final WRITE_CODE_COUNTRY:I

.field private allCountries:[Ljava/lang/CharSequence;

.field private countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

.field private countryCode:[Ljava/lang/CharSequence;

.field private countryISO:[Ljava/lang/CharSequence;

.field countryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field countryMap2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field countryMap3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private editCountry:Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

.field fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

.field private listRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mFilteredCountry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mMode:I

.field private mNoSearchCountries:Landroid/view/View;

.field private needBackKey:Z

.field private selectedCountry:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string v0, "#00CDFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->POPUP_TEXT_COLOR:I

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap2:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    .line 79
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    .line 81
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    .line 83
    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->WRITE_CODE_COUNTRY:I

    .line 89
    const-string v0, "#80979797"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->TEXT_COLOR:I

    .line 99
    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mMode:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->needBackKey:Z

    .line 440
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)[Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)[Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private initialize()V
    .registers 14

    .prologue
    .line 152
    const-string v10, "initialize"

    const-string v11, "CountryActivity"

    invoke-static {v10, v11}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 158
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_26

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setElevation(F)V

    .line 162
    :cond_26
    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$layout;->activity_country:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->setContentView(I)V

    .line 165
    iput-object p0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 169
    .local v6, "intent":Landroid/content/Intent;
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->needBackKey:Z

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 173
    iget-boolean v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->needBackKey:Z

    if-eqz v10, :cond_58

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 178
    :cond_58
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    sget v11, Lcom/samsung/android/coreapps/easysignuplib/R$string;->regist_select_country_or_region_code:I

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setTitle(I)V

    .line 180
    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$id;->listRoot:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    .line 182
    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$id;->editCountrySearch:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->editCountry:Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

    .line 183
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->editCountry:Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

    invoke-virtual {v10, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 184
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->editCountry:Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

    new-instance v11, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$1;

    invoke-direct {v11, p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->editCountry:Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

    const v11, 0x10000003

    invoke-virtual {v10, v11}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->setImeOptions(I)V

    .line 195
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->editCountry:Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

    const/16 v11, 0x4000

    invoke-virtual {v10, v11}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->setInputType(I)V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/coreapps/easysignuplib/R$array;->country:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/coreapps/easysignuplib/R$array;->ISO_country_code_Letter2:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    .line 200
    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$id;->country_list_no_search_result:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mNoSearchCountries:Landroid/view/View;

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/coreapps/easysignuplib/R$array;->country_code:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "extra_hide_country_calling_code"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "hideCountryCallingCode":Ljava/lang/String;
    if-eqz v3, :cond_129

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "allCountries2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, "countryCode2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "countryISO2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_db
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    array-length v10, v10

    if-ge v4, v10, :cond_102

    .line 213
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v10, v10, v4

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ff

    .line 215
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v10, v10, v4

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    aget-object v10, v10, v4

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_ff
    add-int/lit8 v4, v4, 0x1

    goto :goto_db

    .line 225
    :cond_102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    .line 227
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    .line 231
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 235
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 241
    .end local v0    # "allCountries2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v1    # "countryCode2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v2    # "countryISO2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "i":I
    :cond_129
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_12a
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    array-length v10, v10

    if-ge v4, v10, :cond_17a

    .line 243
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap:Ljava/util/Map;

    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v11, v11, v4

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v12, v12, v4

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap2:Ljava/util/Map;

    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v11, v11, v4

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    aget-object v12, v12, v4

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    aget-object v12, v12, v4

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_12a

    .line 257
    :cond_17a
    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$id;->list:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    .line 258
    new-instance v10, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    invoke-direct {v10, p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)V

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    .line 260
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 262
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_1b0

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "mode"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mMode:I

    .line 272
    :cond_1b0
    sget v10, Lcom/samsung/android/coreapps/easysignuplib/R$id;->quickscroll:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iput-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 273
    const/16 v10, 0x1a

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "A"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "B"

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "C"

    aput-object v11, v5, v10

    const/4 v10, 0x3

    const-string v11, "D"

    aput-object v11, v5, v10

    const/4 v10, 0x4

    const-string v11, "E"

    aput-object v11, v5, v10

    const/4 v10, 0x5

    const-string v11, "F"

    aput-object v11, v5, v10

    const/4 v10, 0x6

    const-string v11, "G"

    aput-object v11, v5, v10

    const/4 v10, 0x7

    const-string v11, "H"

    aput-object v11, v5, v10

    const/16 v10, 0x8

    const-string v11, "I"

    aput-object v11, v5, v10

    const/16 v10, 0x9

    const-string v11, "J"

    aput-object v11, v5, v10

    const/16 v10, 0xa

    const-string v11, "K"

    aput-object v11, v5, v10

    const/16 v10, 0xb

    const-string v11, "L"

    aput-object v11, v5, v10

    const/16 v10, 0xc

    const-string v11, "M"

    aput-object v11, v5, v10

    const/16 v10, 0xd

    const-string v11, "N"

    aput-object v11, v5, v10

    const/16 v10, 0xe

    const-string v11, "O"

    aput-object v11, v5, v10

    const/16 v10, 0xf

    const-string v11, "P"

    aput-object v11, v5, v10

    const/16 v10, 0x10

    const-string v11, "Q"

    aput-object v11, v5, v10

    const/16 v10, 0x11

    const-string v11, "R"

    aput-object v11, v5, v10

    const/16 v10, 0x12

    const-string v11, "S"

    aput-object v11, v5, v10

    const/16 v10, 0x13

    const-string v11, "T"

    aput-object v11, v5, v10

    const/16 v10, 0x14

    const-string v11, "U"

    aput-object v11, v5, v10

    const/16 v10, 0x15

    const-string v11, "V"

    aput-object v11, v5, v10

    const/16 v10, 0x16

    const-string v11, "W"

    aput-object v11, v5, v10

    const/16 v10, 0x17

    const-string v11, "X"

    aput-object v11, v5, v10

    const/16 v10, 0x18

    const-string v11, "Y"

    aput-object v11, v5, v10

    const/16 v10, 0x19

    const-string v11, "Z"

    aput-object v11, v5, v10

    .line 274
    .local v5, "index":[Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v10, v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    .line 275
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;)V

    .line 277
    const/16 v8, 0x16

    .line 278
    .local v8, "scrollindexwidth":I
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v7, v10, Landroid/util/DisplayMetrics;->density:F

    .line 279
    .local v7, "scale":F
    int-to-float v10, v8

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v9, v10

    .line 280
    .local v9, "scrollindexwidthinpx":I
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v10, v9}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexWidth(I)V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->isRtlLayout()Z

    move-result v10

    if-eqz v10, :cond_292

    .line 284
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 285
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setIndexScrollViewTheme(I)V

    .line 291
    :goto_287
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    new-instance v11, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$2;

    invoke-direct {v11, p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)V

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    return-void

    .line 287
    :cond_292
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 288
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->fastTrack:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setIndexScrollViewTheme(I)V

    goto :goto_287
.end method

.method private requestPermission()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 120
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v0, v2

    .line 129
    .local v0, "PERMISSIONS":[Ljava/lang/String;
    invoke-static {p0, v0, v4}, Lcom/samsung/android/coreapps/common/util/PermissionUtils;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_37

    .line 131
    const-string v2, "ERROR"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 135
    :cond_36
    :goto_36
    return-void

    .line 132
    :cond_37
    if-nez v1, :cond_36

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->initialize()V

    goto :goto_36
.end method


# virtual methods
.method public finishActivity(I)V
    .registers 7
    .param p1, "result"    # I

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PARAMS_COUNTRY_NAME"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 756
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->setResult(ILandroid/content/Intent;)V

    .line 758
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->finish()V

    .line 760
    return-void
.end method

.method public isRtlLayout()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 799
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 350
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 352
    if-eq p2, v5, :cond_7

    .line 380
    :goto_6
    return-void

    .line 358
    :cond_7
    packed-switch p1, :pswitch_data_2e

    goto :goto_6

    .line 362
    :pswitch_b
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 364
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 366
    const-string v3, "PARAMS_COUNTRY_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "writeCountryCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PARAMS_COUNTRY_CODE"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 372
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->setResult(ILandroid/content/Intent;)V

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->finish()V

    goto :goto_6

    .line 358
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 735
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "onCreate"

    const-string v1, "CountryActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->requestPermission()V

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 774
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onDestroy()V

    .line 775
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget v1, Lcom/samsung/android/coreapps/easysignuplib/R$id;->text1:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    .line 742
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "selectedISO":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectedCountry ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectedISO ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CountryActivity"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->finishActivity(I)V

    .line 748
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->notifyDataSetChanged()V

    .line 750
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 320
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->finish()V

    .line 326
    const/4 v0, 0x1

    .line 330
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 310
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->editCountry:Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_16

    .line 314
    :goto_12
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onPause()V

    .line 315
    return-void

    .line 311
    :catch_16
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CountryActivity"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 10
    .param p1, "searchable"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 390
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    .line 394
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_22

    .line 396
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 400
    :cond_22
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_23
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_78

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 404
    .local v1, "d":I
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_75

    .line 406
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5b

    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 408
    :cond_5b
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 418
    .end local v1    # "d":I
    :cond_78
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->setSearchFilter(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->notifyDataSetChanged()V

    .line 422
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a0

    .line 424
    const-string v2, "YES"

    const-string v3, "CountryActivity"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 428
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mNoSearchCountries:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :goto_9f
    return v5

    .line 432
    :cond_a0
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 434
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mNoSearchCountries:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9f
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 139
    if-nez p1, :cond_12

    .line 140
    invoke-static {p3}, Lcom/samsung/android/coreapps/common/util/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->initialize()V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/EasySignUpLib;->init(Landroid/content/Context;)V

    .line 148
    :cond_12
    :goto_12
    return-void

    .line 144
    :cond_13
    const-string v0, "ALL PERMISSION DENIED"

    const-string v1, "CountryActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->finish()V

    goto :goto_12
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 766
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onResume()V

    .line 768
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 794
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 796
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 780
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onStart()V

    .line 782
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 787
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onStop()V

    .line 789
    return-void
.end method
