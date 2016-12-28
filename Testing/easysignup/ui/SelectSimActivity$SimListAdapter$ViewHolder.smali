.class Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field final synthetic this$1:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;->this$1:Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter$ViewHolder;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SelectSimActivity$SimListAdapter;)V

    return-void
.end method
