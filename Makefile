# ===== Configuration =====
DEBUG ?= 1
BUILD_DIR = build
BUILD_BIN_DIR = $(BUILD_DIR)/src
EXECUTABLE_NAME = $(BUILD_BIN_DIR)/punettsquare

ifeq ($(DEBUG),1)
BUILD_TYPE = Debug
else
BUILD_TYPE = Release
endif

# ===== Targets =====
all: build

create:
	@echo "📂 Creating build directory"
	@mkdir -p $(BUILD_BIN_DIR)

configure: create
	@echo "⚙️  Configuring the project with CMake (Build type: $(BUILD_TYPE))"
	cd $(BUILD_DIR) && cmake -DCMAKE_BUILD_TYPE=$(BUILD_TYPE) -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..

build: configure
	@echo "🔨 Building project in $(BUILD_DIR)"
	cd $(BUILD_DIR) && cmake --build .

install: build
	@echo "📦 Installing project (if CMake install rules exist)"
	cd $(BUILD_DIR) && cmake --install .

execute: build
	@echo "🚀 Running $(EXECUTABLE_NAME)"
	$(EXECUTABLE_NAME)

tidy:
	@echo "🔍 Running clang-tidy on all source files"
	@for file in src/*.c; do \
	    clang-tidy $$file -p $(BUILD_DIR); \
	done

clean:
	@echo "🧹 Cleaning up build files..."
	rm -rf $(BUILD_DIR)

rebuild: clean all

.PHONY: all create configure build install execute tidy clean rebuild
