/*
 * Copyright 2022 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

MEMORY
{
#if defined(VMBASE_EXAMPLE_IS_BIOS)
	image		: ORIGIN = 0x80200000, LENGTH = 2M
	writable_data	: ORIGIN = 0x80400000, LENGTH = 2M
#elif defined(VMBASE_EXAMPLE_IS_KERNEL)
	image		: ORIGIN = 0x80000000, LENGTH = 2M
	writable_data	: ORIGIN = 0x80200000, LENGTH = 2M
#else
#error "Unexpected vmbase_example mode: failed to generate image layout"
#endif
}
