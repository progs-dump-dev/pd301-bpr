/*  Copyright (C) 1996-2022 id Software LLC

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

    See file, 'COPYING', for details.
*/
// misc copy and paste for ref
/////////////////////////////
// causes dmg and pushes player up:
// T_RadiusDamage (self, self, 120, self);
// self.enemy.punchangle_x = -8;
// self.enemy.velocity = '0 0 500';
/////////////////////////////
// spawn_tfog (self.origin + v_forward*96); 96 units in front
/////////////////////////////
/*
// Hammer impact (WIP Paril method)
void() deathmonger_melee15 =[ $melee15, deathmonger_melee16 ] {

	T_RadiusDamage (self, self.owner, 120, world);

	makevectors(self.angles);

	local entity exp;

	exp = spawn();
	exp.origin = self.origin + v_forward*88;
	exp.velocity = '0 0 72';
	exp.touch = SUB_Null;
	setmodel (exp, "progs/s_null.spr");
	exp.solid = SOLID_NOT;
	WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
	WriteByte (MSG_BROADCAST, TE_EXPLOSION);
	WriteCoord (MSG_BROADCAST, exp.origin_x);
	WriteCoord (MSG_BROADCAST, exp.origin_y);
	WriteCoord (MSG_BROADCAST, exp.origin_z);

	vector c = normalize(self.enemy.origin - self.origin);
	self.enemy.velocity += c * 600;
	self.enemy.velocity.z += 200;
	// self.enemy.velocity += c * 600;
	// self.enemy.velocity.z += 100;

};
*/

/*
==============================================================================

DEATH MONGER

==============================================================================
*/
$frame stand1 stand2 stand3 stand4 stand5 stand6 stand7 stand8 stand9

$frame walk1 walk2 walk3 walk4 walk5 walk6 walk7 walk8 walk9 walk10
$frame walk11 walk12 walk13 walk14 walk15 walk16 walk17 walk18 walk19 walk20

$frame run1 run2 run3 run4 run5 run6 run7 run8

$frame melee1 melee2 melee3 melee4 melee5 melee6 melee7 melee8
$frame melee9 melee10 melee11 melee12 melee13 melee14 melee15 melee16
$frame melee17 melee18 melee19 melee20 melee21 melee22 melee23

$frame magic1 magic2 magic3 magic4 magic5 magic6 magic7 magic8 magic9
$frame magic10 magic11 magic12 magic13 magic14 magic15 magic16 magic17 magic18
$frame magic19 magic20 magic21 magic22 magic23 magic24 magic25

$frame pain1 pain2 pain3 pain4 pain5 pain6 pain7 pain8 pain9 pain10 pain11

$frame deatha1 deatha2 deatha3 deatha4 deatha5 deatha6 deatha7 deatha8 deatha9
$frame deatha10 deatha11 deatha12 deatha13 deatha14 deatha15 deatha16 deatha17

$frame deathb1 deathb2 deathb3 deathb4 deathb5 deathb6 deathb7 deathb8
$frame deathb9 deathb10 deathb11 deathb12 deathb13 deathb14

void() deathmonger_idle_sound =
{
	if (random() < 0.2) {
		sound(self, CHAN_VOICE, "hknight/idle.wav", 1, ATTN_NORM);
	}
};

// STAND ===========================================================================
void()	deathmonger_stand1	=[	$stand1,	deathmonger_stand2	] {ai_stand();};
void()	deathmonger_stand2	=[	$stand2,	deathmonger_stand3	] {ai_stand();};
void()	deathmonger_stand3	=[	$stand3,	deathmonger_stand4	] {ai_stand();};
void()	deathmonger_stand4	=[	$stand4,	deathmonger_stand5	] {ai_stand();};
void()	deathmonger_stand5	=[	$stand5,	deathmonger_stand6	] {ai_stand();};
void()	deathmonger_stand6	=[	$stand6,	deathmonger_stand7	] {ai_stand();};
void()	deathmonger_stand7	=[	$stand7,	deathmonger_stand8	] {ai_stand();};
void()	deathmonger_stand8	=[	$stand8,	deathmonger_stand9	] {ai_stand();};
void()	deathmonger_stand9	=[	$stand9,	deathmonger_stand10	] {ai_stand();};
void()	deathmonger_stand10	=[	$stand8,	deathmonger_stand11	] {ai_stand();};
void()	deathmonger_stand11	=[	$stand7,	deathmonger_stand12	] {ai_stand();};
void()	deathmonger_stand12	=[	$stand6,	deathmonger_stand13	] {ai_stand();};
void()	deathmonger_stand13	=[	$stand5,	deathmonger_stand14	] {ai_stand();};
void()	deathmonger_stand14	=[	$stand4,	deathmonger_stand15	] {ai_stand();};
void()	deathmonger_stand15	=[	$stand3,	deathmonger_stand16	] {ai_stand();};
void()	deathmonger_stand16	=[	$stand2,	deathmonger_stand1	] {ai_stand();};

// WALK ===========================================================================
void()	deathmonger_walk1	=[	$walk1,		deathmonger_walk2	] {
	deathmonger_idle_sound();
	ai_walk(2);
};
void()	deathmonger_walk2	=[	$walk2,		deathmonger_walk3	] {ai_walk(5);};
void()	deathmonger_walk3	=[	$walk3,		deathmonger_walk4	] {ai_walk(5);};
void()	deathmonger_walk4	=[	$walk4,		deathmonger_walk5	] {ai_walk(4);};
void()	deathmonger_walk5	=[	$walk5,		deathmonger_walk6	] {ai_walk(4);};
void()	deathmonger_walk6	=[	$walk6,		deathmonger_walk7	] {ai_walk(2);};
void()	deathmonger_walk7	=[	$walk7,		deathmonger_walk8	] {ai_walk(2);};
void()	deathmonger_walk8	=[	$walk8,		deathmonger_walk9	] {ai_walk(3);};
void()	deathmonger_walk9	=[	$walk9,		deathmonger_walk10	] {ai_walk(3);};
void()	deathmonger_walk10	=[	$walk10,	deathmonger_walk11	] {ai_walk(4);};
void()	deathmonger_walk11	=[	$walk11,	deathmonger_walk12	] {ai_walk(3);};
void()	deathmonger_walk12	=[	$walk12,	deathmonger_walk13	] {ai_walk(4);};
void()	deathmonger_walk13	=[	$walk13,	deathmonger_walk14	] {ai_walk(6);};
void()	deathmonger_walk14	=[	$walk14,	deathmonger_walk15	] {ai_walk(2);};
void()	deathmonger_walk15	=[	$walk15,	deathmonger_walk16	] {ai_walk(2);};
void()	deathmonger_walk16	=[	$walk16,	deathmonger_walk17	] {ai_walk(4);};
void()	deathmonger_walk17	=[	$walk17,	deathmonger_walk18	] {ai_walk(3);};
void()	deathmonger_walk18	=[	$walk18,	deathmonger_walk19	] {ai_walk(3);};
void()	deathmonger_walk19	=[	$walk19,	deathmonger_walk20	] {ai_walk(3);};
void()	deathmonger_walk20	=[	$walk20,	deathmonger_walk1	] {ai_walk(2);};

// RUN ===========================================================================
void()	deathmonger_run1	=[	$run1,		deathmonger_run2	] {
	deathmonger_idle_sound();
	ai_run (20);
	dmCheckForCharge ();
};
void()	deathmonger_run2	=[	$run2,		deathmonger_run3	] {ai_run(25);};
void()	deathmonger_run3	=[	$run3,		deathmonger_run4	] {ai_run(18);};
void()	deathmonger_run4	=[	$run4,		deathmonger_run5	] {ai_run(16);};
void()	deathmonger_run5	=[	$run5,		deathmonger_run6	] {ai_run(14);};
void()	deathmonger_run6	=[	$run6,		deathmonger_run7	] {ai_run(25);};
void()	deathmonger_run7	=[	$run7,		deathmonger_run8	] {ai_run(21);};
void()	deathmonger_run8	=[	$run8,		deathmonger_run1	] {ai_run(13);};

/* JUMP + MELEE ATTACK =========================================================================
Big overhead swing.
*/
void() deathmonger_meleeJ1  =[ $melee1,  deathmonger_meleeJ2  ] {ai_face();};
void() deathmonger_meleeJ2  =[ $melee2,  deathmonger_meleeJ3  ] {ai_face();};
void() deathmonger_meleeJ3  =[ $melee3,  deathmonger_meleeJ4  ] {ai_face();};
void() deathmonger_meleeJ4  =[ $melee4,  deathmonger_meleeJ5  ] {ai_face();};
void() deathmonger_meleeJ5  =[ $melee5,  deathmonger_meleeJ6  ] {ai_face();};
void() deathmonger_meleeJ6  =[ $melee6,  deathmonger_meleeJ7  ] {ai_face();};
void() deathmonger_meleeJ7  =[ $melee7,  deathmonger_meleeJ8  ] {ai_face();};
void() deathmonger_meleeJ8  =[ $melee8,  deathmonger_meleeJ9  ] {ai_face();};
void() deathmonger_meleeJ9  =[ $melee9,  deathmonger_meleeJ10 ] {ai_face();};
void() deathmonger_meleeJ10 =[ $melee10, deathmonger_meleeJ11 ] {ai_face();};
void() deathmonger_meleeJ11 =[ $melee11, deathmonger_meleeJ12 ] {ai_face();};
void() deathmonger_meleeJ12 =[ $melee12, deathmonger_meleeJ13 ] {ai_face();};
void() deathmonger_meleeJ13 =[ $melee13, deathmonger_meleeJ14 ] {ai_face();
	makevectors (self.angles);
	self.origin_z = self.origin_z + 1;
	self.velocity = v_forward * 900 + '0 0 250'; // 600
	if (self.flags & FL_ONGROUND)
		self.flags = self.flags - FL_ONGROUND;
};
void() deathmonger_meleeJ14 =[ $melee13, deathmonger_meleeJ15 ] {ai_face();};
void() deathmonger_meleeJ15 =[ $melee13, deathmonger_meleeJ16 ] {ai_face();};
void() deathmonger_meleeJ16 =[ $melee13, deathmonger_meleeJ17 ] {ai_face();};
void() deathmonger_meleeJ17 =[ $melee13, deathmonger_meleeJ18 ] {ai_face();};
void() deathmonger_meleeJ18 =[ $melee13, deathmonger_meleeJ19 ] {ai_face();};
void() deathmonger_meleeJ19 =[ $melee14, deathmonger_meleeJ20 ] {ai_face();};
// Hammer impact (Voidforce method)
// constants
#define DISTANCE_TERMINATOR 320 // 192 no force applied after this point
#define DISTANCE_FADETOMIN 128 // 128 only minimal force applied after this point
#define MINIMAL_FORCE 0.3 // 0.3
#define PUSH_POWER 1200 // 600
#define PUSH_POWER_VERTICAL 512 // 270

void() deathmonger_meleeJ20 =[ $melee15, deathmonger_meleeJ21 ] {

		ai_face();
    vector offset, direction;
    entity exp;
    float falloff;

    makevectors(self.angles);
    offset = [self.origin_x + v_forward_x * 88, self.origin_y + v_forward_y * 88, self.absmin_z];

    exp = spawn();
    exp.origin = offset; // spawn explosion in the actual impact point
    exp.touch = SUB_Null;
    setmodel (exp, "progs/s_null.spr");
    exp.solid = SOLID_NOT;

// uses exp origin to calculate radius damage falloff
    T_RadiusDamage (exp, self, 120, self); //120

// calculating raw value of distance from impact point to the player's center point, store in falloff
    direction = self.enemy.origin - offset;
    falloff = vlen(direction);

// if player is close enough
    if (falloff < DISTANCE_TERMINATOR)
    {
        if (falloff > DISTANCE_FADETOMIN)
            falloff = MINIMAL_FORCE;
        else
        // calculatig falloff fade amount, in this case raw value (falloff) is in range [0..DISTANCE_FADETOMIN]
            falloff = falloff / DISTANCE_FADETOMIN;

    // now apply the push
    // set directional vector to length of 1
        direction = normalize(direction);
        self.enemy.velocity += [direction_x * PUSH_POWER * falloff, direction_y * PUSH_POWER * falloff, PUSH_POWER_VERTICAL * falloff];
    }

    WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte (MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord (MSG_BROADCAST, exp.origin_x);
    WriteCoord (MSG_BROADCAST, exp.origin_y);
    WriteCoord (MSG_BROADCAST, exp.origin_z);
};

void() deathmonger_meleeJ21 =[ $melee16, deathmonger_meleeJ22 ] {};
void() deathmonger_meleeJ22 =[ $melee17, deathmonger_meleeJ23 ] {};
void() deathmonger_meleeJ23 =[ $melee18, deathmonger_meleeJ24 ] {};
void() deathmonger_meleeJ24 =[ $melee19, deathmonger_meleeJ25 ] {};
void() deathmonger_meleeJ25 =[ $melee20, deathmonger_meleeJ26 ] {};
void() deathmonger_meleeJ26 =[ $melee21, deathmonger_meleeJ27 ] {};
void() deathmonger_meleeJ27 =[ $melee22, deathmonger_meleeJ28 ] {};
void() deathmonger_meleeJ28 =[ $melee23, deathmonger_run1 ] {};

/* MELEE ATTACK =========================================================================
Big overhead swing.
*/
void() deathmonger_melee1  =[ $melee1,  deathmonger_melee2  ] {ai_face();};
void() deathmonger_melee2  =[ $melee2,  deathmonger_melee3  ] {ai_face();};
void() deathmonger_melee3  =[ $melee3,  deathmonger_melee4  ] {ai_face();};
void() deathmonger_melee4  =[ $melee4,  deathmonger_melee5  ] {ai_face();};
void() deathmonger_melee5  =[ $melee5,  deathmonger_melee6  ] {ai_face();};
void() deathmonger_melee6  =[ $melee6,  deathmonger_melee7  ] {ai_face();};
void() deathmonger_melee7  =[ $melee7,  deathmonger_melee8  ] {ai_face();};
void() deathmonger_melee8  =[ $melee8,  deathmonger_melee9  ] {ai_face();};
void() deathmonger_melee9  =[ $melee9,  deathmonger_melee10 ] {ai_face();};
void() deathmonger_melee10 =[ $melee10, deathmonger_melee11 ] {ai_face();};
void() deathmonger_melee11 =[ $melee11, deathmonger_melee12 ] {ai_face();};
void() deathmonger_melee12 =[ $melee12, deathmonger_melee13 ] {ai_face();};
void() deathmonger_melee13 =[ $melee13, deathmonger_melee14 ] {ai_face();};
void() deathmonger_melee14 =[ $melee14, deathmonger_melee15 ] {ai_face();};
// Hammer impact (WIP Voidforce method)
// constants
#define DISTANCE_TERMINATOR 320 // 192 no force applied after this point
#define DISTANCE_FADETOMIN 128 // 128 only minimal force applied after this point
#define MINIMAL_FORCE 0.3 // 0.3
#define PUSH_POWER 1200 // 600
#define PUSH_POWER_VERTICAL 512 // 270

void() deathmonger_melee15 =[ $melee15, deathmonger_melee16 ] {

		ai_face();
    vector offset, direction;
    entity exp;
    float falloff;

    makevectors(self.angles);
    offset = [self.origin_x + v_forward_x * 88, self.origin_y + v_forward_y * 88, self.absmin_z];

    exp = spawn();
    exp.origin = offset; // spawn explosion in the actual impact point
    exp.touch = SUB_Null;
    setmodel (exp, "progs/s_null.spr");
    exp.solid = SOLID_NOT;

// uses exp origin to calculate radius damage falloff
    T_RadiusDamage (exp, self, 120, self); //120

// calculating raw value of distance from impact point to the player's center point, store in falloff
    direction = self.enemy.origin - offset;
    falloff = vlen(direction);

// if player is close enough
    if (falloff < DISTANCE_TERMINATOR)
    {
        if (falloff > DISTANCE_FADETOMIN)
            falloff = MINIMAL_FORCE;
        else
        // calculatig falloff fade amount, in this case raw value (falloff) is in range [0..DISTANCE_FADETOMIN]
            falloff = falloff / DISTANCE_FADETOMIN;

    // now apply the push
    // set directional vector to length of 1
        direction = normalize(direction);
        self.enemy.velocity += [direction_x * PUSH_POWER * falloff, direction_y * PUSH_POWER * falloff, PUSH_POWER_VERTICAL * falloff];
    }

    WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte (MSG_BROADCAST, TE_EXPLOSION);
    WriteCoord (MSG_BROADCAST, exp.origin_x);
    WriteCoord (MSG_BROADCAST, exp.origin_y);
    WriteCoord (MSG_BROADCAST, exp.origin_z);
};

void() deathmonger_melee16 =[ $melee16, deathmonger_melee17 ] {};
void() deathmonger_melee17 =[ $melee17, deathmonger_melee18 ] {};
void() deathmonger_melee18 =[ $melee18, deathmonger_melee19 ] {};
void() deathmonger_melee19 =[ $melee19, deathmonger_melee20 ] {};
void() deathmonger_melee20 =[ $melee20, deathmonger_melee21 ] {};
void() deathmonger_melee21 =[ $melee21, deathmonger_melee22 ] {};
void() deathmonger_melee22 =[ $melee22, deathmonger_melee23 ] {};
void() deathmonger_melee23 =[ $melee23, deathmonger_run1 ] {};

/* MAGIC ATTACK =========================================================================
Fires homing fireballs?
*/

void() deathmonger_magic1  =[ $magic1,  deathmonger_magic2  ] {};
void() deathmonger_magic2  =[ $magic2,  deathmonger_magic3  ] {};
void() deathmonger_magic3  =[ $magic3,  deathmonger_magic4  ] {};
void() deathmonger_magic4  =[ $magic4,  deathmonger_magic5  ] {};
void() deathmonger_magic5  =[ $magic5,  deathmonger_magic6  ] {};
void() deathmonger_magic6  =[ $magic6,  deathmonger_magic7  ] {ai_face();};
void() deathmonger_magic7  =[ $magic7,  deathmonger_magic8  ] {ai_face();};
void() deathmonger_magic8  =[ $magic8,  deathmonger_magic9  ] {ai_face();};
void() deathmonger_magic9  =[ $magic9,  deathmonger_magic10a ] {ai_face();};
void() deathmonger_magic10a =[ $magic10, deathmonger_magic11a ] {
	ai_face();
	OgreFireLavaBall();
	sound_misc2 (self, CHAN_WEAPON, "shalrath/attack2.wav", 1, ATTN_NORM);
	self.homing = .5;
};
void() deathmonger_magic11a =[ $magic11, deathmonger_magic10b ] {};
void() deathmonger_magic10b =[ $magic10, deathmonger_magic11b ] {
	ai_face();
	OgreFireLavaBall();self.homing = .7;
};
void() deathmonger_magic11b =[ $magic11, deathmonger_magic10c ] {ai_face();};
void() deathmonger_magic10c =[ $magic10, deathmonger_magic11c ] {
	ai_face();
	OgreFireLavaBall();self.homing = .9;
};
void() deathmonger_magic11c =[ $magic11, deathmonger_magic12 ] {ai_face();};
void() deathmonger_magic12 =[ $magic12, deathmonger_magic13 ] {ai_face();};
void() deathmonger_magic13 =[ $magic13, deathmonger_magic14 ] {ai_face();};
void() deathmonger_magic14 =[ $magic14, deathmonger_magic15 ] {ai_face();};
void() deathmonger_magic15 =[ $magic15, deathmonger_magic16 ] {ai_face();};
void() deathmonger_magic16 =[ $magic16, deathmonger_magic17 ] {ai_face();};
void() deathmonger_magic17 =[ $magic17, deathmonger_magic18 ] {ai_face();};
void() deathmonger_magic18 =[ $magic18, deathmonger_magic19 ] {ai_face();};
void() deathmonger_magic19 =[ $magic19, deathmonger_magic20 ] {ai_face();};
void() deathmonger_magic20 =[ $magic20, deathmonger_magic21 ] {ai_face();};
void() deathmonger_magic21 =[ $magic21, deathmonger_magic22 ] {ai_face();};
void() deathmonger_magic22 =[ $magic22, deathmonger_magic23 ] {ai_face();};
void() deathmonger_magic23 =[ $magic23, deathmonger_magic24 ] {ai_face();};
void() deathmonger_magic24 =[ $magic24, deathmonger_magic25 ] {ai_face();};
void() deathmonger_magic25 =[ $magic25, deathmonger_run1 ] {};

// ATTACK =====================================================================

void() dmChooseAttack =
{
	local float chance;
	chance = 0.9;

	if (enemy_range == RANGE_MELEE)
		deathmonger_melee1();
	else if (enemy_range == RANGE_NEAR)
	{
		if (random () < chance)
			{
				deathmonger_meleeJ1();
				// dprint ("I choose \bmelee\n");
			}
		else
			{
				deathmonger_magic1();
				// dprint ("I choose \bmissiles\n")
			}
	}
	else if (enemy_range == RANGE_MID)
		deathmonger_magic1();
	else
		deathmonger_run1();
};

//============================================================================
// Charge animation
//============================================================================

void() dmCheckForCharge =
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
	// charge
	SUB_AttackFinished (2);
	dmChooseAttack ();
	// deathmonger_run1 ();
};

// PAIN ============================================================================
void()	deathmonger_pain1	=[	$pain1,		deathmonger_pain2	] {
	sound(self, CHAN_VOICE, "hknight/pain1.wav", 1, ATTN_NORM);
	self.walkframe = 0;
};
void()	deathmonger_pain2	=[	$pain2,		deathmonger_run1	] {
// void()	deathmonger_pain2	=[	$pain2,		deathmonger_pain3	] {
	if (self.walkframe < 10) {
		self.walkframe += 1;
		self.frame = $pain1 + self.walkframe;
	}
	else
		deathmonger_run1();
};

void() dm_pain_sound = // FIXME - make this random selection of pain sounds
{
	if (random() < 0.2)
	{
		self.pain_finished = time + 1.5;
		sound_pain (self, CHAN_VOICE, "hknight/pain1.wav", 1, ATTN_NORM);
	}
};

void(entity attacker, float damage)	deathmonger_pain =
{
	if (self.pain_finished > time)
		return;

		dm_pain_sound(); // added this to lessen spamy pain sound - dumptruck_ds
 // sound(self, CHAN_VOICE, "hknight/pain1.wav", 1, ATTN_NORM);

	if (time - self.pain_finished > 7)
	// if (time - self.pain_finished > 5)
	{	// always go into pain frame if it has been a while
		deathmonger_pain1();
		self.pain_finished = time + 1;
		return;
	}

	if ((random() * 90 > damage))
	// if ((random() * 30 > damage))
		return;		// didn't flinch

	self.pain_finished = time + 1;
	deathmonger_pain1();
};
void() deathmonger_kaboom = //explodes after normal death
{
		sound (self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
		self.style = 1;  //sets play_meatspray to larger gibbing style
		play_meatspray();
		self.origin = self.origin + '0 0 16';
		play_meatspray();
		self.origin = self.origin + '0 0 8';
		GrenadeExplode();
		return;
};

// DEATH ============================================================================
void()	deathmonger_diea1	=[	$deatha1,	deathmonger_diea2	] {};
void()	deathmonger_diea2	=[	$deatha2,	deathmonger_diea3	] {};
void()	deathmonger_diea3	=[	$deatha3,	deathmonger_diea4	] {
	self.solid = SOLID_NOT;
	self.walkframe = 2;
};
void()	deathmonger_diea4	=[	$deatha4,	deathmonger_diea4	] {
	if (self.walkframe < 16) {
		self.walkframe += 1;
	}
	self.frame = $deatha1 + self.walkframe;
	if (self.walkframe > 15)
	{
		self.think = deathmonger_kaboom;
		self.nextthink = time + 2;
	}
	SUB_UseTargets ();
};

void()	deathmonger_dieb1	=[	$deathb1,	deathmonger_dieb2	] {};
void()	deathmonger_dieb2	=[	$deathb2,	deathmonger_dieb3	] {};
void()	deathmonger_dieb3	=[	$deathb3,	deathmonger_dieb4	] {
	self.solid = SOLID_NOT;
	self.walkframe = 2;
};
void()	deathmonger_dieb4	=[	$deathb4,	deathmonger_dieb4	] {
	if (self.walkframe < 13) {
		self.walkframe += 1;
	}
	self.frame = $deathb1 + self.walkframe;
	if (self.walkframe > 12)
	{
		self.think = deathmonger_kaboom;
		self.nextthink = time + 2;
	}
	SUB_UseTargets ();
};

void() deathmonger_die =
{
	// check for gib
	if (self.health < -40)
	{
		sound(self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
		ThrowHead ("progs/h_dthmgr.mdl", self.health);
		ThrowGib ("progs/gib1.mdl", self.health);
		ThrowGib ("progs/gib2.mdl", self.health);
		ThrowGib ("progs/gib3.mdl", self.health);
		return;
	}

	// regular death
	sound(self, CHAN_VOICE, "hknight/death1.wav", 1, ATTN_NORM);

	if (random() > 0.5)
		deathmonger_diea1();
	else
		deathmonger_dieb1();
};

// ===================================================================

void() monster_death_monger =
{
	if (SUB_Inhibit ())  // new spawnflags for all entities -- iw
		return;

	if (deathmatch)
	{
		remove(self);
		return;
	}
	precache_sound ("boss1/throw.wav"); // for fireballs

	precache_model2("progs/deathmonger.mdl");
	precache_model2("progs/h_dthmgr.mdl");
	precache_model2("progs/k_spike.mdl");

	precache_sound2("hknight/death1.wav");
	precache_sound2("hknight/pain1.wav");
	precache_sound2("hknight/sight1.wav");
	precache_sound2("hknight/idle.wav");

	self.noise = "hknight/sight1.wav";

	precache_sound2("hknight/attack1.wav");
	precache_sound("hknight/hit.wav");	// used by C code, so don't sound2
	precache_sound2("hknight/slash1.wav");
	precache_sound2("hknight/grunt.wav");

	precache_sound("knight/sword1.wav");
	precache_sound("knight/sword2.wav");

	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;

	body_model ("progs/deathmonger.mdl");

	setsize (self, '-16 -16 -24', '16 16 40');

	self.netname = "Death Monger";

	if (!self.health)
	{
		if (skill == 0)
			self.health = 750;
		else
			self.health = 2500;
	}

	self.max_health = self.health; // thanks 4LT -dumptruck_ds

	if (!self.proj_speed_mod)
	{
		self.proj_speed_mod = 1;
	}

	self.th_stand = deathmonger_stand1;
	self.th_walk = deathmonger_walk1;
	self.th_run = deathmonger_run1;
	self.th_melee = dmChooseAttack;
	// self.th_melee = deathmonger_melee1;
	// self.th_missile = SUB_Null;
	self.th_missile = dmChooseAttack;
	// self.th_missile = deathmonger_magic1;
	self.th_pain = deathmonger_pain;
	self.th_die = deathmonger_die;

	walkmonster_start ();
};
