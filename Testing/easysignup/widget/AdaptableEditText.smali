.class public Lcom/samsung/android/coreapps/easysignup/widget/AdaptableEditText;
.super Landroid/widget/EditText;
.source "AdaptableEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public setFilters([Landroid/text/InputFilter;)V
    .registers 9
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 39
    move-object v0, p1

    .local v0, "arr$":[Landroid/text/InputFilter;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_6
    if-ge v3, v4, :cond_21

    aget-object v2, v0, v3

    .line 40
    .local v2, "filter":Landroid/text/InputFilter;
    instance-of v5, v2, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;

    if-eqz v5, :cond_1e

    .line 41
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/widget/AdaptableEditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 42
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "maxLength"

    check-cast v2, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;

    .end local v2    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;->getMaxLength()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 45
    :cond_21
    return-void
.end method
