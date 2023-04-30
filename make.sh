#! /usr/bin/env sh

SLIDES=(
  --font-family "Source Code Pro" \
  --styles \
    "https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@300;400;700&display=swap" \
    "https://doc.rust-lang.org/book/tomorrow-night.css" \
  --slides \
    "This is an example of CodeSlide CLI." "" \
    "rustlings is at https://github.com/rust-lang/rustlings" "" \
    "" "./README.orig.md" \
    "" "./exercises/variables/README.md" \
    "Variables 1" "./exercises/variables/variables1.rs" \
    "Variables 2" "./exercises/variables/variables2.rs" \
    "" "./exercises/functions/README.md" \
    "Functions 1" "./exercises/functions/functions1.rs" \
    "Functions 2" "./exercises/functions/functions2.rs" \
    "" "./exercises/if/README.md" \
    "If 1" "./exercises/if/if1.rs" \
    "If 2" "./exercises/if/if2.rs" \
    "" "./exercises/primitive_types/README.md" \
    "Primitive Types 1" "./exercises/primitive_types/primitive_types1.rs" \
    "Primitive Types 2" "./exercises/primitive_types/primitive_types2.rs" \
    "" "./exercises/vecs/README.md" \
    "Vecs 1" "./exercises/vecs/vecs1.rs" \
    "Vecs 2" "./exercises/vecs/vecs2.rs" \
    "" "./exercises/move_semantics/README.md" \
    "Move Semantics 1" "./exercises/move_semantics/move_semantics1.rs" \
    "Move Semantics 2" "./exercises/move_semantics/move_semantics2.rs" \
    "" "./exercises/structs/README.md" \
    "Structs 1" "./exercises/structs/structs1.rs" \
    "Structs 2" "./exercises/structs/structs2.rs" \
    "" "./exercises/enums/README.md" \
    "Enums 1" "./exercises/enums/enums1.rs" \
    "Enums 2" "./exercises/enums/enums2.rs" \
    "" "./exercises/strings/README.md" \
    "Strings 1" "./exercises/strings/strings1.rs" \
    "Strings 2" "./exercises/strings/strings2.rs" \
    "" "./exercises/modules/README.md" \
    "Modules 1" "./exercises/modules/modules1.rs" \
    "Modules 2" "./exercises/modules/modules2.rs" \
    "" "./exercises/hashmaps/README.md" \
    "Hashmaps 1" "./exercises/hashmaps/hashmaps1.rs" \
    "Hashmaps 2" "./exercises/hashmaps/hashmaps2.rs" \
    "" "./exercises/options/README.md" \
    "Options 1" "./exercises/options/options1.rs" \
    "Options 2" "./exercises/options/options2.rs" \
    "" "./exercises/error_handling/README.md" \
    "Error Handling 1" "./exercises/error_handling/errors1.rs" \
    "Error Handling 2" "./exercises/error_handling/errors2.rs" \
    "" "./exercises/generics/README.md" \
    "Generics 1" "./exercises/generics/generics1.rs" \
    "Generics 2" "./exercises/generics/generics2.rs" \
    "" "./exercises/traits/README.md" \
    "Traits 1" "./exercises/traits/traits1.rs" \
    "Traits 2" "./exercises/traits/traits2.rs" \
    "" "./exercises/tests/README.md" \
    "Tests 1" "./exercises/tests/tests1.rs" \
    "Tests 2" "./exercises/tests/tests2.rs" \
    "" "./exercises/lifetimes/README.md" \
    "Lifetimes 1" "./exercises/lifetimes/lifetimes1.rs" \
    "Lifetimes 2" "./exercises/lifetimes/lifetimes2.rs" \
    "" "./exercises/iterators/README.md" \
    "Iterators 1" "./exercises/iterators/iterators1.rs" \
    "Iterators 2" "./exercises/iterators/iterators2.rs" \
    "" "./exercises/threads/README.md" \
    "Threads 1" "./exercises/threads/threads1.rs" \
    "Threads 2" "./exercises/threads/threads2.rs" \
    "" "./exercises/smart_pointers/README.md" \
    "Smart Pointers arc" "./exercises/smart_pointers/arc1.rs" \
    "Smart Pointers box" "./exercises/smart_pointers/box1.rs" \
    "Smart Pointers cow" "./exercises/smart_pointers/cow1.rs" \
    "Smart Pointers rc" "./exercises/smart_pointers/rc1.rs" \
    "" "./exercises/macros/README.md" \
    "Macros 1" "./exercises/macros/macros1.rs" \
    "Macros 2" "./exercises/macros/macros2.rs" \
    "" "./exercises/clippy/README.md" \
    "Clippy 1" "./exercises/clippy/clippy1.rs" \
    "Clippy 2" "./exercises/clippy/clippy2.rs" \
    "" "./exercises/conversions/README.md" \
    "Conversions as_ref_mut" "./exercises/conversions/as_ref_mut.rs" \
    "Conversions from_into" "./exercises/conversions/from_into.rs" \
    "Conversions from_str" "./exercises/conversions/from_str.rs" \
    "Conversions try_from_into" "./exercises/conversions/try_from_into.rs" \
    "Conversions using_as" "./exercises/conversions/using_as.rs" \
    "Thanks to all contributors of rustlings!" "" \
);

echo "index.html" && \
time ../../dist/index.js \
  -o ./index.html \
  --format html \
  --layout horizontal \
  "${SLIDES[@]}" && \
\
echo "index.html" && \
time ../../dist/index.js \
  -o ./index.vertical.html \
  --format html \
  --layout vertical \
  "${SLIDES[@]}" && \
\
echo "index.pdf" && \
time ../../dist/index.js \
  -o ./index.pdf \
  --format pdf \
  --layout vertical \
  "${SLIDES[@]}";
  
