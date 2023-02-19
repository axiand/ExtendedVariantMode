﻿using Celeste;
using System;

namespace ExtendedVariants.Variants.Vanilla {
    public class InvisibleMotion : AbstractVanillaVariant {
        public override Type GetVariantType() {
            return typeof(bool);
        }

        public override object GetDefaultVariantValue() {
            return false;
        }

        public override object ConvertLegacyVariantValue(int value) {
            return value != 0;
        }

        protected override Assists applyVariantValue(Assists target, object value) {
            target.InvisibleMotion = (bool) value;
            return target;
        }
    }
}
