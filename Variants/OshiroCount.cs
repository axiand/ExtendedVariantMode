﻿using System;

namespace ExtendedVariants.Variants {
    public class OshiroCount : AbstractExtendedVariant {
        public override Type GetVariantType() {
            return typeof(int);
        }

        public override object GetDefaultVariantValue() {
            return 1;
        }

        public override object ConvertLegacyVariantValue(int value) {
            return value;
        }
    }
}
