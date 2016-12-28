.class Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$8;
.super Landroid/os/Handler;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->btnGetServiceProfile(Landroid/view/View;)V
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
    .line 661
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 664
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$8;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "btnGetServiceProfile  : received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 665
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x7d9

    if-ne v4, v5, :cond_72

    .line 666
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 667
    .local v1, "mBundle":Landroid/os/Bundle;
    const-string v4, "extra_contact_service_profile_result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 668
    .local v3, "serviceProfileDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/contact/io/data/response/ServiceProfileDetails;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/coreapps/contact/io/data/response/ServiceProfileDetails;

    .line 669
    .local v2, "object":Lcom/samsung/android/coreapps/contact/io/data/response/ServiceProfileDetails;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/samsung/android/coreapps/contact/io/data/response/ServiceProfileDetails;->duid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msisdn ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/samsung/android/coreapps/contact/io/data/response/ServiceProfileDetails;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sids = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/samsung/android/coreapps/contact/io/data/response/ServiceProfileDetails;->sids:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TestActivity"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 672
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mBundle":Landroid/os/Bundle;
    .end local v2    # "object":Lcom/samsung/android/coreapps/contact/io/data/response/ServiceProfileDetails;
    .end local v3    # "serviceProfileDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/contact/io/data/response/ServiceProfileDetails;>;"
    :cond_72
    return-void
.end method
