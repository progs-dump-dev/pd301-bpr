/*
==============================================================================

VIKING (Boss) based on hknight.qc

==============================================================================
*/

$cd id1/progs/viking
$origin 0 0 24
$base base
$skin skin

$frame vs2 vs3 vs4 vs5 vs6 vs7 vs8 vs9
$frame vs10 vs11 vs12 vs13 vs14 vs15 vs16 vs17 vs18 vs19
$frame vs20 vs21

$frame vw1 vw2 vw3 vw4 vw5 vw6 vw7 vw8 vw9
$frame vw10 vw11 vw12 vw13 vw14 vw15 vw16 vw17 vw18 vw19
$frame vw20

$frame va1 va2 va3 va4 va5 va6 va7 va8 va9
$frame va10 va11 va12 va13 va14 va15 va16 va17 va18 va19
$frame va20 va21

$frame vd1 vd2 vd3 vd4 vd5 vd6 vd7 vd8 vd9
$frame vd10 vd11 vd12 vd13 vd14 vd15 vd16 vd17 vd18 vd19
$frame vd20 vd21

$frame vr1 vr2 vr3 vr4 vr5 vr6 vr7 vr8 vr9
$frame vr10

$frame vdth1 vdth2 vdth3 vdth4 vdth5 vdth6 vdth7 vdth8 vdth9 vdth10

$frame vfa1 vfa2 vfa3 vfa4 vfa5 vfa6 vfa7 vfa8 vfa9
$frame vfa10 vfa11 vfa12 vfa13 vfa14 vfa15 vfa16

$frame vp1 vp2 vp3 vp4 vp5 vp6 vp7 vp8

$frame v3a1 v3a2 v3a3 v3a4 v3a5 v3a6

void() viking_char_a1;
void() viking_run1;
void() v_idle_sound;

//============================================================================
// Standing
//============================================================================

void()	viking_stand1	=[	$vs2,	viking_stand2	] {ai_stand();};
void()	viking_stand2	=[	$vs3,	viking_stand3	] {ai_stand();};
void()	viking_stand3	=[	$vs4,	viking_stand4	] {ai_stand();};
void()	viking_stand4	=[	$vs5,	viking_stand5	] {ai_stand();};
void()	viking_stand5	=[	$vs6,	viking_stand6	] {ai_stand();};
void()	viking_stand6	=[	$vs7,	viking_stand7	] {ai_stand();};
void()	viking_stand7	=[	$vs8,	viking_stand8	] {ai_stand();};
void()	viking_stand8	=[	$vs9,	viking_stand9	] {ai_stand();};
void()	viking_stand9	=[	$vs10,	viking_stand10	] {ai_stand();};
void()	viking_stand10	=[	$vs11,	viking_stand11	] {ai_stand();};
void()	viking_stand11	=[	$vs12,	viking_stand12	] {ai_stand();};
void()	viking_stand12	=[	$vs13,	viking_stand13	] {ai_stand();};
void()	viking_stand13	=[	$vs14,	viking_stand14	] {ai_stand();};
void()	viking_stand14	=[	$vs15,	viking_stand15	] {ai_stand();};
void()	viking_stand15	=[	$vs16,	viking_stand16	] {ai_stand();};
void()	viking_stand16	=[	$vs17,	viking_stand17	] {ai_stand();};
void()	viking_stand17	=[	$vs18,	viking_stand18	] {ai_stand();};
void()	viking_stand18	=[	$vs19,	viking_stand19	] {ai_stand();};
void()	viking_stand19	=[	$vs20,	viking_stand20	] {ai_stand();};
void()	viking_stand20	=[	$vs21,	viking_stand1	] {ai_stand();};

//============================================================================
// Walking
//============================================================================

void()	viking_walk1	=[	$vw1,		viking_walk2	]
{
	v_idle_sound();
	ai_walk(2);
};
void()	viking_walk2	=[	$vw2,		viking_walk3	] {ai_walk(5);};
void()	viking_walk3	=[	$vw3,		viking_walk4	] {ai_walk(5);};
void()	viking_walk4	=[	$vw4,		viking_walk5	] {ai_walk(4);};
void()	viking_walk5	=[	$vw5,		viking_walk6	] {ai_walk(4);};
void()	viking_walk6	=[	$vw6,		viking_walk7	] {ai_walk(2);};
void()	viking_walk7	=[	$vw7,		viking_walk8	] {ai_walk(2);};
void()	viking_walk8	=[	$vw8,		viking_walk9	] {ai_walk(3);};
void()	viking_walk9	=[	$vw9,		viking_walk10	] {ai_walk(3);};
void()	viking_walk10	=[	$vw10,	viking_walk11	] {ai_walk(4);};
void()	viking_walk11	=[	$vw11,	viking_walk12	] {ai_walk(3);};
void()	viking_walk12	=[	$vw12,	viking_walk13	] {ai_walk(4);};
void()	viking_walk13	=[	$vw13,	viking_walk14	] {ai_walk(6);};
void()	viking_walk14	=[	$vw14,	viking_walk15	] {ai_walk(2);};
void()	viking_walk15	=[	$vw15,	viking_walk16	] {ai_walk(2);};
void()	viking_walk16	=[	$vw16,	viking_walk17	] {ai_walk(4);};
void()	viking_walk17	=[	$vw17,	viking_walk18	] {ai_walk(3);};
void()	viking_walk18	=[	$vw18,	viking_walk19	] {ai_walk(3);};
void()	viking_walk19	=[	$vw19,	viking_walk20	] {ai_walk(3);};
void()	viking_walk20	=[	$vw20,	viking_walk1	] {ai_walk(2);};

//============================================================================
// Running
//============================================================================

void()	viking_run1	=[	$vw1,		viking_run2	]
{
	dprint ("\bviking_run1\n");
	v_idle_sound();
	ai_run(20);
	vCheckForCharge ();
};
void()	viking_run2	=[	$vw3,		viking_run3	] {ai_run(25);};
void()	viking_run3	=[	$vw5,		viking_run4	] {ai_run(18);};
void()	viking_run4	=[	$vw7,		viking_run5	] {ai_run(16);};
void()	viking_run5	=[	$vw9,		viking_run6	] {ai_run(14);};
void()	viking_run6	=[	$vw11,		viking_run7	] {ai_run(25);};
void()	viking_run7	=[	$vw13,		viking_run8	] {ai_run(21);};
void()	viking_run8	=[	$vw15,		viking_run9	] {ai_run(13);};
void()	viking_run9	=[	$vw17,		viking_run10	] {ai_run(21);};
void()	viking_run10 =[ $vw19,		viking_run1	] {ai_run(13);};

//============================================================================
// Pain
//============================================================================

void()	viking_pain1	=[	$vp2,		viking_pain2	] {dprint ("pain1");};
void()	viking_pain2	=[	$vp2,		viking_pain3	] {};
void()	viking_pain3	=[	$vp3,		viking_pain4	] {};
void()	viking_pain4	=[	$vp4,		viking_pain5	] {};
void()	viking_pain5	=[	$vp5,		viking_pain6	] {};
void()	viking_pain6	=[	$vp6,		viking_pain7	] {};
void()	viking_pain7	=[	$vp7,		viking_pain8	] {};
void()	viking_pain8	=[	$vp8,		viking_run1	] {};

//============================================================================
// Stage 2 - Rise and Chase - viking_run_st2_1
//============================================================================

void()	viking_run_st2_1	=[	$vp2,		viking_run_st2_2	] {ai_charge(9);dprint ("Stage 2 Begins\n");self.cnt = 2;};
void()	viking_run_st2_2	=[	$vp2,		viking_run_st2_3	] {ai_charge(6);};
void()	viking_run_st2_3	=[	$vp3,		viking_run_st2_4	] {ai_charge(13);};
void()	viking_run_st2_4	=[	$vp4,		viking_run_st2_5	] {ai_charge(4);};
void()	viking_run_st2_5	=[	$vp5,		viking_run_st2_6	] {ai_charge(7);};
void()	viking_run_st2_6	=[	$vp6,		viking_run_st2_7	] {ai_charge(15);};
void()	viking_run_st2_7	=[	$vp7,		viking_run_st2_8	] {ai_charge(8);};
void()	viking_run_st2_8	=[	$vp8,		viking_run_st2_1	] {ai_charge(3);viking_attk_choose();};

//============================================================================
// Stage 2 Pain
//============================================================================

void()	viking_pain_st2_1	=[	$vp2,		viking_pain_st2_2	] {dprint ("Stage 2 \bPAIN!!!!\n");};
void()	viking_pain_st2_2	=[	$vp2,		viking_pain_st2_3	] {};
void()	viking_pain_st2_3	=[	$vp3,		viking_pain_st2_4	] {};
void()	viking_pain_st2_4	=[	$vp4,		viking_pain_st2_5	] {};
void()	viking_pain_st2_5	=[	$vp5,		viking_pain_st2_6	] {};
void()	viking_pain_st2_6	=[	$vp6,		viking_pain_st2_7	] {};
void()	viking_pain_st2_7	=[	$vp7,		viking_pain_st2_8	] {};
void()	viking_pain_st2_8	=[	$vp8,		viking_run_st2_1	] {viking_attk_choose();};

//============================================================================
// Stage 2 Attack - viking_attk_st2_1
//============================================================================

void()	viking_attk_st2_1	=[	$vp2,		viking_attk_st2_2	] {ai_face();self.homing = 0;hknight_shot(0);dprint ("Stage 2 \bATTACK\n");};
void()	viking_attk_st2_2	=[	$vp2,		viking_attk_st2_3	] {ai_face();};
void()	viking_attk_st2_3	=[	$vp3,		viking_attk_st2_4	] {ai_face();};
void()	viking_attk_st2_4	=[	$vp4,		viking_attk_st2_5	] {ai_face();};
void()	viking_attk_st2_5	=[	$vp5,		viking_attk_st2_6	] {ai_face();};
void()	viking_attk_st2_6	=[	$vp6,		viking_attk_st2_7	] {ai_face();};
void()	viking_attk_st2_7	=[	$vp7,		viking_attk_st2_8	] {ai_face();};
void()	viking_attk_st2_8	=[	$vp8,		viking_run_st2_1	] {ai_face();viking_run_choose();};

//============================================================================
// Death Final Gib
//============================================================================

void()	viking_die1	=[	$vd1,	viking_die2	] {ai_forward(10);};
void()	viking_die2	=[	$vd2,	viking_die3	] {ai_forward(8);};
void()	viking_die3	=[	$vd3,	viking_die4	]
{
	self.solid = SOLID_NOT;
	ai_forward(7);
};
void()	viking_die4	=[	$vd4,	viking_die5	] {};
void()	viking_die5	=[	$vd5,	viking_die6	] {};
void()	viking_die6	=[	$vd6,	viking_die7	] {};
void()	viking_die7	=[	$vd7,	viking_die8	] {};
void()	viking_die8	=[	$vd8,	viking_die9	] {};
void()	viking_die9	=[	$vd9,	viking_die10	] {};
void()	viking_die10	=[	$vd10,	viking_die11	] {};
void()	viking_die11	=[	$vd11,	viking_die12	] {};
void()	viking_die12	=[	$vd12,	viking_die13	] {};
void()	viking_die13	=[	$vd13,	viking_die14	] {};
void()	viking_die14	=[	$vd14,	viking_die15	]	{};
void()	viking_die15	=[	$vd14,	viking_die16	]	{};
void()	viking_die16	=[	$vd14,	viking_die16	]
{
		self.origin = self.origin + '0 0 8';
		sound (self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
		self.style = 1;  //sets play_meatspray to larger gibbing style
		play_meatspray();
		self.origin = self.origin + '0 0 16';
		play_meatspray();
		self.origin = self.origin + '0 0 8';
		GrenadeExplode();
		return;
};

//============================================================================

void() viking_die =
{
		viking_die1();
};

//============================================================================
// Stage 1 - Projectile Attack
//============================================================================

void()	viking_magica1 =[	$va7,	viking_magica8	] {ai_face();}; //removed some frames - dumptruck_ds
void()	viking_magica8 =[	$va8,	viking_magica9	] {ai_face();};
void()	viking_magica9 =[	$va9,	viking_magica10] {ai_face();};
void()	viking_magica10 =[	$va10,	viking_magica11] {ai_face();};
void()	viking_magica11 =[	$va11,	viking_magica12] {ai_face();};
void()	viking_magica12 =[	$va12,	viking_magica13] {ai_face();};
void()	viking_magica13 =[	$va13,	viking_magica14]  {OgreFireLavaBall();
sound_misc2 (self, CHAN_WEAPON, "shalrath/attack2.wav", 1, ATTN_NORM);self.homing = .5;};
void()	viking_magica14 =[	$va14,	viking_magica15	]{ai_face();};
void()	viking_magica15 =[	$va15,	viking_magica16	]{OgreFireLavaBall();self.homing = .7;};
void()	viking_magica16 =[	$va16,	viking_magica17	] {ai_face();};
void()	viking_magica17 =[	$va17,	viking_magica18	] {OgreFireLavaBall();self.homing = .9;};
void()	viking_magica18 =[	$va18,	viking_magica19	] {ai_face();};
void()	viking_magica19 =[	$va19,	viking_magica20	] {ai_face();};
void()	viking_magica20 =[	$va20,	viking_magica21	] {ai_face();};
void()	viking_magica21 =[	$va21,	viking_run1	] {ai_face();};

//============================================================================
// Charge!
//============================================================================

void()	viking_char_a1	=[	$vw1,	viking_char_a2	] {ai_charge(20);}; //dumptruck_ds
void()	viking_char_a2	=[	$vw3,	viking_char_a3	] {ai_charge(25);};
void()	viking_char_a3	=[	$vw5,	viking_char_a4	] {ai_charge(18);};
void()	viking_char_a4	=[	$vw7,	viking_char_a5	] {ai_charge(16);};
void()	viking_char_a5	=[	$vw9,	viking_char_a6	] {ai_charge(14);};
void()	viking_char_a6	=[	$vw11,	viking_char_a7	] {ai_charge(20);};
void()	viking_char_a7	=[	$vw13,	viking_char_a8	] {ai_charge(21);};
void()	viking_char_a8	=[	$vw15,	viking_char_a9	] {ai_charge(13);};
void()	viking_char_a9	=[	$vw17,	viking_char_a10	] {ai_charge(20);};
void()	viking_char_a10=[	$vw19,	viking_run1		] {ai_charge(20);};

//============================================================================
// Stage 1 - Melee Attack
//============================================================================

void()	viking_watk1	=[	$vfa2,	viking_watk2	] {ai_charge(20);}; //dumptruck_ds
void()	viking_watk2	=[	$vfa4,	viking_watk3	] {ai_charge(16);};
void()	viking_watk3	=[	$vfa6,	viking_watk4	] {ai_charge(20);};
void()	viking_watk4	=[	$vfa8,	viking_watk5	] {ai_charge(13);};
void()	viking_watk5=[	$vfa10,	viking_watk6	] {ai_charge(20);};
void()	viking_watk6=[	$vfa12,	viking_watk7	] {ai_charge(16);self.damage_mod = 4;ai_melee();};
void()	viking_watk7=[	$vfa14,	viking_watk8	] {ai_charge(25); ai_melee();};
void()	viking_watk8=[	$vfa16,	viking_run1	] {ai_charge(13);self.damage_mod = 0;};

//============================================================================
// Charge animation
//============================================================================

void() vCheckForCharge =
{
	// check for mad charge
	if (!enemy_vis)
		return;
	if (time < self.attack_finished)
		return;
	if ( fabs(self.origin_z - self.enemy.origin_z) > 20)
		// too much height change
		return;
	if ( vlen (self.origin - self.enemy.origin) < 80)
		// use regular attack
		return;
		dprint ("CHARGE!!!!!\n");
	// charge
	SUB_AttackFinished (2);
	viking_run1 ();
};

// void() vCheckContinueCharge =
// {
// 	if (time > self.attack_finished)
// 	{
// 		SUB_AttackFinished (3);
// 		viking_run1 ();
// 		return;		// done charging
// 	}
// 	if (random() > 0.5)
// 		sound (self, CHAN_WEAPON, "knight/sword2.wav", 1, ATTN_NORM);
// 	else
// 		sound (self, CHAN_WEAPON, "knight/sword1.wav", 1, ATTN_NORM);
// };

//============================================================================
// Sounds Misc
//============================================================================

void() v_idle_sound =
{
	if (random() < 0.2)
		sound (self, CHAN_VOICE, "hknight/idle.wav", 1, ATTN_NORM);
};

void() v_pain_sound =
{
	if (random() < 0.2)
		sound (self, CHAN_VOICE, "hknight/pain1.wav", 1, ATTN_NORM);
};

//============================================================================
// Pain Stage 1
//============================================================================

void(entity attacker, float damage)	viking_pain =
{
	if (self.pain_finished > time)
	return;

	v_pain_sound();

	if (!self.cnt)
		{
			if (self.health < self.max_health * 0.66)
			{
					self.cnt = 1;
					viking_pain_st2_1();
					return;
			}
		}

	if (self.cnt == 1)
		{
			if (self.health < self.max_health * 0.33)
			{
				self.cnt = 2;
				viking_run_st3_1();
				return;
			}
		}
	{

	// if (time - self.pain_finished > 5)
	// if ((time - self.pain_finished > 5) && (self.cnt != 1))
	// {
	// 	// always go into pain frame if it has been a while
	// 	viking_pain1 ();
	// 	self.pain_finished = time + 1;
	// 	return;
	// }

	if ((random()*90 > damage) && (self.cnt != 1))
		// didn't flinch
		return;
	}
};

//============================================================================
// Melee
//============================================================================

void() viking_melee =
{
	sound (self, CHAN_WEAPON, "hknight/slash1.wav", 1, ATTN_NORM);
	viking_watk1 ();
};

void() viking_melee_choose =
{
	if (!self.cnt)
	viking_melee();

	if (self.cnt == 1) // doesn't melee in stage2
	return;

	if (self.cnt > 1)
	// viking_melee_st3();  // need to create this
	return; //TEMP

};

void() viking_attk_choose =
{
	if (!self.cnt)
	viking_magica1();

	if (self.cnt == 1)
	viking_attk_st2_1();

	if (self.cnt > 1)
	{
		dprint ("Stage 3 Begins\n");
		viking_attk_st2_1();
		// viking_attk_st3_1(); // need to create this
		return; //TEMP
	}

};
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
void() viking_run_st3_1 =
{
	dprint ("Stage 3 \bRUN RUN RUN RUN!\n");
	viking_run_st2_1();
};

void() viking_run_choose =
{
	if (!self.cnt)
	{
		dprint ("viking_run_choose\n");
		viking_run1();
	}

	if (self.cnt == 1)
	viking_run_st2_1();

	if (self.cnt > 1)
	viking_run_st3_1();

};

/*QUAKED monster_viking (1 0 0) (-16 -16 -24) (16 16 40) Ambush
*/
void() monster_viking =
{
	if (deathmatch)
	{
		remove(self);
		return;
	}
	precache_sound ("boss1/throw.wav"); // jaycie erysdren 2021-09-14

	precache_model2 ("progs/viking.mdl");
	precache_model2 ("progs/k_spike.mdl");
	precache_model2 ("progs/h_hellkn.mdl");


	precache_sound2 ("hknight/attack1.wav");
	precache_sound2 ("hknight/death1.wav");
	precache_sound2 ("hknight/pain1.wav");
	precache_sound2 ("hknight/sight1.wav");
	precache_sound ("hknight/hit.wav");		// used by C code, so don't sound2
	precache_sound2 ("hknight/slash1.wav");
	precache_sound2 ("hknight/idle.wav");
	precache_sound2 ("hknight/grunt.wav");

	precache_sound ("knight/sword1.wav");
	precache_sound ("knight/sword2.wav");

	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;

	setmodel (self, "progs/viking.mdl");

	setsize (self, '-16 -16 -24', '16 16 40');

	if (!self.health)
	{
		if (skill == 0)
			self.health = 1000;
		else
			self.health = 3000;
	}

	self.max_health = self.health; // thanks 4LT -dumptruck_ds

	self.th_stand = viking_stand1;
	self.th_walk = viking_walk1;
	self.th_run = viking_run_choose;
	self.th_melee = viking_melee_choose;
	self.th_missile = viking_attk_choose;
	self.th_pain = viking_pain;
	self.th_die = viking_die;
	// self.cnt = 0;

	walkmonster_start ();
};
//I'm dumb this is a test for Github
