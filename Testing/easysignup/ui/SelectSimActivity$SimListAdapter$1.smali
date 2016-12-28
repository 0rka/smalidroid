.class Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;
.super Ljava/lang/Object;
.source "SelectSimActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;I)V
    .registers 3

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

    iput p2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;

    iget-object v1, v1, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

    iget v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 203
    return-void
.end method
