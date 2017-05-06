.class synthetic Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$2;
.super Ljava/lang/Object;
.source "SelectPetAvatarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->values()[Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$2;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    :try_start_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$2;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->BENTLEY_THE_BEAR:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$2;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->CHARLEY_THE_CAT:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$2;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->DIESEL_THE_DOG:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$2;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->BUBBLES_THE_BUNNY:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$2;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->STARBURST_THE_UNICORN:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
