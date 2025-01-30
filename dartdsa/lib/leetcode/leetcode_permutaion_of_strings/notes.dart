//!🔹 Key Learning & Observations from This Problem

//This problem is based on the Sliding Window technique, which helps optimize checking for substring permutations efficiently.

//! 1️⃣ Understanding Sliding Window
// The sliding window technique is useful when dealing with substrings or subarrays.
// Instead of checking all substrings (brute force O(N^2)), we maintain a fixed-length window and slide it across the string.
// The window size is always equal to s1.length.
// We update our frequency map dynamically, adding a new character on the right and removing a character from the left.
// 2️⃣ Frequency Maps for Character Counting
// You used HashMaps (Map<String, int>) to store character frequencies in both s1 and s2.
// This allows efficient O(1) lookups instead of scanning the substring every time.

//! Key Observations:
// ✅ Using s1Map[s1[i]] = (s1Map[s1[i]] ?? 0) + 1 helps handle character occurrences easily.
// ✅ When removing characters, check if the count becomes zero, and remove the key to keep maps minimal.
// ✅ Comparing two maps directly with toString() is unreliable, so use MapEquality().equals().

//! 3️⃣ Sliding Window Key Steps
// ✅ Initialize a frequency map for s1.
// ✅ Create an initial window in s2 of the same size.
// ✅ Check if both maps match (if yes, return true).
// ✅ Slide the window across s2:

// Add a new character from the right.
// Remove the leftmost character.
// Compare maps again.
// ✅ If no match is found, return false after the loop.

//! 4️⃣ Why Not Use Brute Force?
// Brute force: Check all substrings of s2 of length s1.length → O(N^2)
// Sliding window: We avoid recomputing the entire substring frequency every time → O(N) (faster!)

//!🔹What to Remember for Future Problems
// ✔ Sliding window is useful for subarray/substring problems.
// ✔ Use frequency maps instead of checking substrings directly.
// ✔ When comparing maps, use MapEquality().equals(), not toString().
// ✔ Update the frequency map dynamically to avoid unnecessary recalculations.
// ✔ Sliding window reduces the time complexity from O(N^2) to O(N).