.class Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CountryActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountryAdapter"
.end annotation


# instance fields
.field AlphabetIndex:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSearchFilter:Ljava/lang/String;

.field private mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 452
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 447
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    .line 454
    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 456
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 469
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 471
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 478
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x0

    .line 496
    if-nez p2, :cond_d

    .line 498
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$layout;->list_item_common_3:I

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 506
    :cond_d
    sget v5, Lcom/samsung/android/coreapps/easysignuplib/R$id;->text1:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    .line 537
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_141

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_141

    .line 542
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " (+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    iget-object v7, v7, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$200(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 572
    :cond_6c
    :goto_6c
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    if-eqz v5, :cond_c6

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c6

    .line 574
    const/4 v4, 0x0

    .line 576
    .local v4, "start":I
    const/4 v0, 0x0

    .line 578
    .local v0, "end":I
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 580
    if-ltz v4, :cond_c6

    .line 582
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v4, v5

    .line 586
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 588
    .local v3, "selectedWord":Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignuplib/R$color;->country_search_highlight:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v5, v4, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 590
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    .end local v0    # "end":I
    .end local v3    # "selectedWord":Landroid/text/SpannableStringBuilder;
    .end local v4    # "start":I
    :cond_c6
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    if-eqz v5, :cond_11c

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_11c

    .line 625
    const/4 v1, 0x0

    .line 627
    .local v1, "index":I
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_11c

    .line 629
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 631
    .restart local v3    # "selectedWord":Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignuplib/R$color;->country_search_highlight:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v9, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 633
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    .end local v1    # "index":I
    .end local v3    # "selectedWord":Landroid/text/SpannableStringBuilder;
    :cond_11c
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    invoke-virtual {v5}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->isRtlLayout()Z

    move-result v5

    if-eqz v5, :cond_140

    .line 639
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 640
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    invoke-virtual {v5}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/coreapps/easysignuplib/R$dimen;->layout_rtl_layout_extra_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 641
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_140
    return-object p2

    .line 552
    :cond_141
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    if-ge p1, v5, :cond_15b

    .line 554
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    :cond_15b
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    if-ge p1, v5, :cond_6c

    .line 562
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " (+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, p1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_6c
.end method

.method public onIndexSelected(I)V
    .registers 8
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 649
    add-int/lit8 v1, p1, 0x41

    .line 650
    .local v1, "searchPosition":I
    const/4 v2, 0x0

    .line 651
    .local v2, "targetPosition":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 652
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_48

    .line 653
    move v2, v0

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    .line 655
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->notifyDataSetChanged()V

    .line 659
    :cond_3e
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 661
    return-void

    .line 651
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public setSearchFilter(Ljava/lang/String;)V
    .registers 2
    .param p1, "searchFilter"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->mSearchFilter:Ljava/lang/String;

    .line 488
    return-void
.end method
