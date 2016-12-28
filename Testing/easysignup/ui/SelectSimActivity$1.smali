.class Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;
.super Ljava/lang/Object;
.source "SelectSimActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 77
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is checked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectSimActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 80
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 84
    :goto_3c
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mAdapter:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->notifyDataSetChanged()V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->checkIsReady()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;)V

    .line 86
    return-void

    .line 82
    :cond_49
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_3c
.end method
