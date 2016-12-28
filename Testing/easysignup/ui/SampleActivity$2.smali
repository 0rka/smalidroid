.class Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$2;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->authHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->requestAuth(Landroid/os/Handler;I)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Landroid/os/Handler;I)V

    .line 125
    return-void
.end method
