.class public Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;
.super Landroid/widget/SearchView;
.source "TwSearchView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 53
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignuplib/R$drawable;->country_search_textfield:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignuplib/R$dimen;->tw_search_view_elevation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 58
    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->setIconifiedByDefault(Z)V

    .line 59
    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->setIconified(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignuplib/R$string;->search:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->setFocusable(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->onActionViewExpanded()V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->clearFocus()V

    .line 64
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 66
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 67
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setNewActionPopupMenu(IZ)V

    .line 68
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setNewActionPopupMenu(IZ)V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    :cond_6b
    return-void
.end method
