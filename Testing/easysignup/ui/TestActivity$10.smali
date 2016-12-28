.class Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$10;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V
    .registers 2

    .prologue
    .line 741
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$10;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 746
    if-eqz p2, :cond_d

    .line 747
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$10;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOn(Landroid/content/Context;I)V

    .line 751
    :goto_c
    return-void

    .line 749
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$10;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->access$100(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOff(Landroid/content/Context;I)V

    goto :goto_c
.end method
