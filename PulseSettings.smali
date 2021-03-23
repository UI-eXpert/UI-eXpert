.class public Lin/Event/MAAAD/2017/PulseSettings;
.super Landroid/preference/PreferenceFragment;
.source "PulseSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CUSTOM_DIMEN:Ljava/lang/String; = "pulse_custom_dimen"

.field private static final CUSTOM_DIV:Ljava/lang/String; = "pulse_custom_div"

.field private static final EMPTY_BLOCK:Ljava/lang/String; = "pulse_empty_block_size"

.field private static final FADING_LAVAMP_SPEED:Ljava/lang/String; = "fling_pulse_lavalamp_speed"

.field private static final FUDGE_FACOR:Ljava/lang/String; = "pulse_custom_fudge_factor"

.field private static final PULSE_BLOCK:Ljava/lang/String; = "pulse_filled_block_size"

.field private static final RENDER_STYLE_FADING_BARS:I = 0x0

.field private static final RENDER_STYLE_SOLID_LINES:I = 0x1

.field private static final SOLID_FUDGE:Ljava/lang/String; = "pulse_solid_fudge_factor"

.field private static final SOLID_LAVAMP_SPEED:Ljava/lang/String; = "lavamp_solid_speed"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mCustomDimen:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

.field mCustomDiv:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

.field mEmpty:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

.field mFadingSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

.field mFilled:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

.field mFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

.field mLavaLampEnabled:Landroid/preference/SwitchPreference;

.field mPulseColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field mRenderMode:Landroid/preference/ListPreference;

.field mShowPulse:Landroid/preference/SwitchPreference;

.field mSolidFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

.field mSolidSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "in.Event.MAAAD.2017.PulseSettings"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/Event/MAAAD/2017/PulseSettings;->TAG:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, -0x2

    const/4 v2, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f08007a    # type="xml" name="pulse_settings"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    const v3, 0x7f0c0eb0    # type="string" name="pulse_settings"

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 76
    :cond_0
    const-string v0, "eos_fling_show_pulse"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mShowPulse:Landroid/preference/SwitchPreference;

    .line 77
    iget-object v3, p0, Lin/Event/MAAAD/2017/PulseSettings;->mShowPulse:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "FLING_PULSE_ENABLED"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mShowPulse:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "PULSE_RENDER_STYLE_URI"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 82
    const-string v0, "pulse_render_mode"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mRenderMode:Landroid/preference/ListPreference;

    .line 83
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mRenderMode:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mRenderMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    const-string v0, "pulse_fading_bars_category"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 87
    if-eqz v4, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 88
    const-string v0, "pulse_2"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 89
    if-eq v4, v2, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "FLING_PULSE_COLOR"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 92
    const-string v0, "eos_fling_pulse_color"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mPulseColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 93
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mPulseColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setNewPreviewColor(I)V

    .line 94
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mPulseColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    const-string v0, "eos_fling_lavalamp"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mLavaLampEnabled:Landroid/preference/SwitchPreference;

    .line 97
    iget-object v3, p0, Lin/Event/MAAAD/2017/PulseSettings;->mLavaLampEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "FLING_PULSE_LAVALAMP_ENABLED"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mLavaLampEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string v0, "pulse_custom_dimen"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mCustomDimen:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    .line 101
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "PULSE_CUSTOM_DIMEN"

    const/4 v4, 0x7

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 104
    iget-object v3, p0, Lin/Event/MAAAD/2017/PulseSettings;->mCustomDimen:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    div-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setValue(I)V

    .line 106
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mCustomDimen:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    invoke-virtual {v0, p0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string v0, "pulse_custom_div"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mCustomDiv:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    .line 109
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "PULSE_CUSTOM_DIV"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 112
    iget-object v1, p0, Lin/Event/MAAAD/2017/PulseSettings;->mCustomDiv:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    div-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setValue(I)V

    .line 114
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mCustomDiv:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    invoke-virtual {v0, p0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    const-string v0, "pulse_filled_block_size"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFilled:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    .line 117
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "PULSE_FILLED_BLOCK_SIZE"

    invoke-static {v0, v1, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 120
    iget-object v1, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFilled:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    div-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setValue(I)V

    .line 122
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFilled:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    invoke-virtual {v0, p0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    const-string v0, "pulse_empty_block_size"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mEmpty:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    .line 125
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "PULSE_EMPTY_BLOCK_SIZE"

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 128
    iget-object v1, p0, Lin/Event/MAAAD/2017/PulseSettings;->mEmpty:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    div-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setValue(I)V

    .line 130
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mEmpty:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    invoke-virtual {v0, p0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    const-string v0, "pulse_custom_fudge_factor"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    .line 133
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "PULSE_CUSTOM_FUDGE_FACTOR"

    invoke-static {v0, v1, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 136
    iget-object v1, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    div-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setValue(I)V

    .line 138
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    invoke-virtual {v0, p0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    const-string v0, "pulse_solid_fudge_factor"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mSolidFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    .line 140
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "PULSE_SOLID_FUDGE_FACTOR"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 143
    iget-object v1, p0, Lin/Event/MAAAD/2017/PulseSettings;->mSolidFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    div-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setValue(I)V

    .line 144
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mSolidFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    invoke-virtual {v0, p0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    const-string v0, "lavamp_solid_speed"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mSolidSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    .line 147
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "PULSE_LAVALAMP_SOLID_SPEED"

    invoke-static {v0, v1, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 149
    iget-object v1, p0, Lin/Event/MAAAD/2017/PulseSettings;->mSolidSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    div-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setValue(I)V

    .line 150
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mSolidSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    invoke-virtual {v0, p0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    const-string v0, "fling_pulse_lavalamp_speed"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    iput-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFadingSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    .line 153
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FLING_PULSE_LAVALAMP_SPEED"

    invoke-static {v0, v1, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 155
    iget-object v1, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFadingSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    div-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setValue(I)V

    .line 156
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFadingSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    invoke-virtual {v0, p0}, Lin/Event/MAAAD/2017/SeekBarPreferenceCham;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_1
    move v0, v2

    .line 77
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 87
    goto/16 :goto_1

    :cond_3
    move v3, v2

    .line 89
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 97
    goto/16 :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x2

    const/4 v3, 0x1

    .line 161
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mRenderMode:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 163
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "PULSE_RENDER_STYLE_URI"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 165
    const-string v0, "pulse_fading_bars_category"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 166
    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 167
    const-string v0, "pulse_2"

    invoke-virtual {p0, v0}, Lin/Event/MAAAD/2017/PulseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 168
    if-eq v4, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 256
    :goto_2
    return v3

    :cond_0
    move v1, v3

    .line 166
    goto :goto_0

    :cond_1
    move v2, v3

    .line 168
    goto :goto_1

    .line 171
    :cond_2
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mShowPulse:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 174
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "FLING_PULSE_ENABLED"

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 177
    :cond_4
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mPulseColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "FLING_PULSE_COLOR"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 182
    :cond_5
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mLavaLampEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 183
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 184
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "FLING_PULSE_LAVALAMP_ENABLED"

    if-eqz v0, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 187
    :cond_7
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mCustomDimen:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    if-ne p1, v0, :cond_8

    .line 188
    check-cast p2, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PULSE_CUSTOM_DIMEN"

    mul-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    .line 197
    :cond_8
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mCustomDiv:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    if-ne p1, v0, :cond_9

    .line 198
    check-cast p2, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PULSE_CUSTOM_DIV"

    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_2

    .line 207
    :cond_9
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFilled:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    if-ne p1, v0, :cond_a

    .line 208
    check-cast p2, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PULSE_FILLED_BLOCK_SIZE"

    mul-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_2

    .line 217
    :cond_a
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mEmpty:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    if-ne p1, v0, :cond_b

    .line 218
    check-cast p2, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PULSE_EMPTY_BLOCK_SIZE"

    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_2

    .line 227
    :cond_b
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    if-ne p1, v0, :cond_c

    .line 228
    check-cast p2, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 230
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PULSE_CUSTOM_FUDGE_FACTOR"

    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_2

    .line 237
    :cond_c
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mSolidFudge:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    if-ne p1, v0, :cond_d

    .line 238
    check-cast p2, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 239
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PULSE_SOLID_FUDGE_FACTOR"

    mul-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_2

    .line 244
    :cond_d
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mSolidSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    if-ne p1, v0, :cond_e

    .line 245
    check-cast p2, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PULSE_LAVALAMP_SOLID_SPEED"

    mul-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_2

    .line 249
    :cond_e
    iget-object v0, p0, Lin/Event/MAAAD/2017/PulseSettings;->mFadingSpeed:Lin/Event/MAAAD/2017/SeekBarPreferenceCham;

    if-ne p1, v0, :cond_f

    .line 250
    check-cast p2, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 251
    invoke-virtual {p0}, Lin/Event/MAAAD/2017/PulseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "FLING_PULSE_LAVALAMP_SPEED"

    mul-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_2

    :cond_f
    move v3, v2

    .line 256
    goto/16 :goto_2
.end method
