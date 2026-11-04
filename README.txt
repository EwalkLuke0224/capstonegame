NASHA'S COZY PETS PACK
======================

Hi, and welcome to the family!

This is a free pack: 84 cozy pet objects, 16 pet animations (64 frames)
and 6 seamless floor and wall tiles. Cats, dogs and small pets, their
beds, cages, toys, food and a few little wall decorations - all round,
soft and friendly.

It's drawn in the same style and scale as my Cozy Home, Cozy Cafe &
Shops, Cozy Fantasy Village, Cozy Farm and Cozy Autumn & Halloween packs,
so your pets can move right into any of them.


WHERE THINGS ARE
----------------

sprites/        One PNG per object, sorted into folders: cats, dogs,
                small_pets, pet_furniture, food_care, toys_accessories and
                wall_decor. Transparent background, trimmed tight.

animations/     16 animations for 12 pets, 4 frames each: walking to the
                right (tabby, tuxedo, siamese and calico cats, corgi,
                golden retriever, pug, shiba inu) and idling (paw licking,
                sleeping, tail swishing, tail wagging, a playful puppy
                bounce, a nibbling hamster, a twitchy bunny). One folder
                per pet:
                  corgi_walk_1.png ... corgi_walk_4.png   single frames
                  corgi_walk_strip.png                    all 4 in a row
                All frames of one animation share the same canvas size and
                are already aligned, so they play without jitter. Flip
                them horizontally to walk left. animations.json lists
                every animation with its frame size and a suggested speed.

spritesheets/   Each folder on a single sheet with equal-sized cells. The
                .json next to each sheet tells you which cell is which.

tiles/          Seamless 32x32 tiles: light wood planks, sage carpet,
                cream and blue checker, and paw print and cream stripe
                wallpapers.

manifest.json   A list of every object with its category and size.


A FEW TIPS
----------

The sprites are small on purpose, so you can scale them to suit your
game. Scale by whole numbers - 2x, 3x, 4x - and turn off smoothing so
the pixels stay crisp:

  Godot       set the texture Filter to Off (or Nearest)
  Unity       Filter Mode: Point, Compression: None
  GameMaker   untick "Interpolate colours between pixels"


USING THE PACK
--------------

It's free! Use it in your free and commercial games and projects, and
edit it however you like. A credit is always lovely, but not required.

Please don't resell or re-upload the sprites themselves as an asset
pack, and don't use them to train AI models. Full terms in LICENSE.txt.


Want a whole cozy world for your pets? Check out my Cozy Home Asset Pack,
and the Cozy Farm Pack with 35 animated farm animals - same style, same
scale.

Have fun!
- Nasha
