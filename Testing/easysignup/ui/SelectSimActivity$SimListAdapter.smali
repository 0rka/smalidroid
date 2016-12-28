.class Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->simInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->simInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 171
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 176
    move-object v0, p2

    .line 177
    .local v0, "row":Landroid/view/View;
    const/4 v1, 0x0

    .line 181
    .local v1, "viewHolder":Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;
    if-nez v0, :cond_52

    .line 182
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->access$300(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$layout;->list_item_sim_info:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;

    .end local v1    # "viewHolder":Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;)V

    .line 186
    .restart local v1    # "viewHolder":Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$id;->checkbox:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    :goto_28
    new-instance v2, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v3, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->simInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;

    iget-object v2, v2, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimInfo;->msisdn:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 212
    iget-object v2, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    return-object v0

    .line 190
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_52
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;
    check-cast v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;
    goto :goto_28
.end method
