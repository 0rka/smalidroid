.class public Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;
.super Lcom/samsung/android/coreapps/common/ui/BaseActivity;
.source "SelectSimActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;,
        Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectSimActivity"


# instance fields
.field mAdapter:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

.field private mButtonCancel:Landroid/widget/TextView;

.field private mButtonOK:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field mListView:Landroid/widget/ListView;

.field simInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->simInfoList:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mAdapter:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

    .line 153
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->checkIsReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkIsReady()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 220
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mButtonOK:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 224
    :goto_e
    return-void

    .line 222
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mButtonOK:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_e
.end method

.method private initSimInfoList()V
    .registers 6

    .prologue
    .line 137
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->simInfoList:Ljava/util/List;

    .line 139
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/sdl/MultiSimManagerRef;->getSimSlotCount()I

    move-result v2

    .line 140
    .local v2, "slotCount":I
    const/4 v3, 0x0

    .local v3, "slotId":I
    :goto_c
    if-ge v3, v2, :cond_31

    .line 141
    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/sdl/MultiSimManagerRef;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "imsi":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 143
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;)V

    .line 144
    .local v1, "info":Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;
    iput-object v0, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;->imsi:Ljava/lang/String;

    .line 145
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;->msisdn:Ljava/lang/String;

    .line 146
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;->bChecked:Z

    .line 148
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->simInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v1    # "info":Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 151
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_31
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 114
    .local v0, "id":I
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->button_right:I

    if-ne v0, v5, :cond_40

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "imsi_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_e
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 118
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 119
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->simInfoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;

    iget-object v1, v5, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;->imsi:Ljava/lang/String;

    .line 120
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 124
    :cond_2e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "imsi_list"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 128
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->finish()V

    .line 133
    .end local v2    # "imsi_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "position":I
    :cond_3f
    :goto_3f
    return-void

    .line 130
    :cond_40
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->button_left:I

    if-eq v0, v5, :cond_49

    const v5, 0x102002c

    if-ne v0, v5, :cond_3f

    .line 131
    :cond_49
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->onBackPressed()V

    goto :goto_3f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$layout;->activity_select_sim:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->setContentView(I)V

    .line 53
    iput-object p0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->initSimInfoList()V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->deregister:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 60
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->body1:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->select_the_phone_numbers_to_deregister:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->you_can_select_multiple_numbers:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->body2:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->after_deregister_the_number:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->need_to_reverify:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->sim_list:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mAdapter:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->button_right:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mButtonOK:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mButtonOK:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mButtonOK:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->button_left:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mButtonCancel:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mButtonCancel:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mButtonCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->checkIsReady()V

    .line 98
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->onBackPressed()V

    .line 105
    :cond_c
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
