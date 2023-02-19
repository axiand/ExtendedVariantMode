﻿using Celeste;
using System;
using static ExtendedVariants.Module.ExtendedVariantsModule;

namespace ExtendedVariants.Variants {
    public class EveryJumpIsUltra : AbstractExtendedVariant {

        public override Type GetVariantType() {
            return typeof(bool);
        }

        public override object GetDefaultVariantValue() {
            return false;
        }

        public override object ConvertLegacyVariantValue(int value) {
            return value != 0;
        }

        public override void Load() {
            On.Celeste.Player.Jump += modJump;
        }

        public override void Unload() {
            On.Celeste.Player.Jump -= modJump;
        }

        private void modJump(On.Celeste.Player.orig_Jump orig, Celeste.Player self, bool particles, bool playSfx) {
            forceUltra(self);
            orig(self, particles, playSfx);
        }

        private void forceUltra(Player self) {
            if (GetVariantValue<bool>(Variant.EveryJumpIsUltra)) {
                // I don't know what an ultra is, I'm a beginner-intermediate player, so I hope this is the piece of code I was supposed to copy to replicate one. ~ max480
                self.DashDir.X = Math.Sign(self.DashDir.X);
                self.DashDir.Y = 0f;
                // self.Speed.Y = 0f; // this seems a bit counter-productive when applied after a jump...
                self.Speed.X *= GetVariantValue<float>(Variant.UltraSpeedMultiplier);
                self.Ducking = true;
            }
        }
    }
}
