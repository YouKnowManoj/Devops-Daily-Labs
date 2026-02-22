# Terraform Learning Journey 🚀

---

## Lesson 1 – What is Terraform and Getting Started

### What is Terraform?

Terraform is a tool that lets you create and manage cloud infrastructure (like servers, storage, databases) by writing simple configuration files instead of clicking around manually in the cloud console.

For example, instead of logging into AWS and manually creating a server, you write it in a file and Terraform does it for you automatically.

This approach is called **Infrastructure as Code (IaC)** — your infrastructure is defined in code, just like a software application.

---

### Why use Terraform?

- It saves time — no more manual clicking in the console
- It is repeatable — run the same file and get the same result every time
- It is easy to share — your teammates can use the same file
- It tracks changes — you always know what is deployed

---

### Key Terms

| Term | Meaning |
|------|---------|
| Provider | The cloud platform you are using (e.g. AWS, Azure, GCP) |
| Resource | The actual thing you want to create (e.g. a server, a bucket) |
| State | How Terraform keeps track of what it has created |
| Plan | A preview of what Terraform will do |
| Apply | Actually creating or changing the infrastructure |
| Destroy | Deleting everything Terraform created |

---

### Step 1 – Install Terraform

Go to the official website and download Terraform for your operating system:

👉 https://developer.hashicorp.com/terraform/install

After installing, open your terminal and check it works:

```bash
terraform version
```

You should see something like:
```
Terraform v1.7.0
```

---

### Step 2 – Create Your First Terraform File

Create a new folder called `learn-terraform` on your computer. Inside it, create a file called `main.tf` and add this:

```hcl
provider "aws" {
  region = "us-east-1"
}
```

This tells Terraform: "I want to use AWS, specifically the US East region."

---

### Step 3 – Run Your First Command

Open your terminal, navigate to your folder, and run:

```bash
terraform init
```

This downloads everything Terraform needs to talk to AWS. You will see a success message when it is done.

---

### Lesson 1 Summary

By the end of Lesson 1 you should know:

- Terraform lets you manage cloud infrastructure using code
- `.tf` is the file extension for Terraform files
- `provider` tells Terraform which cloud platform to use
- `terraform init` sets up and downloads required plugins

---
---

## Lesson 2 – Your First Real Resource (S3 Bucket)

### What is an S3 Bucket?

Think of it like a **folder on the internet** where you can store files. It is one of the simplest AWS resources, which makes it perfect for learning Terraform.

---

### Step 1 – Update your main.tf

Open the `main.tf` file you created in Lesson 1 and update it to look like this:

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-first-terraform-bucket-12345"
}
```

Here is what each line means:

| Line | Meaning |
|------|---------|
| `resource` | "I want to create something" |
| `"aws_s3_bucket"` | "specifically an S3 bucket" |
| `"my_bucket"` | "I'll call it this inside my code" |
| `bucket = "..."` | "this is the actual name on AWS" |

> ⚠️ The bucket name must be **globally unique** across all of AWS. Add your name or random numbers to make it unique, for example: `"john-terraform-bucket-5678"`

---

### Step 2 – Run the Terraform Commands

```bash
terraform init    # only needed once — skip if already done in Lesson 1
terraform plan    # preview what will be created (nothing happens yet)
terraform apply   # actually creates the bucket (type 'yes' when asked)
```

After running `apply`, log into your AWS console and you will see the bucket there! 🎉

---

### Step 3 – Clean Up

When you are done practicing, always delete your resources to avoid AWS charges:

```bash
terraform destroy
```

Type `yes` when prompted. This will delete the S3 bucket.

---

### Lesson 2 Summary

By the end of Lesson 2 you should know:

- `resource` is how you create things in Terraform
- Every resource has a **type** (e.g. `aws_s3_bucket`) and a **name** (e.g. `my_bucket`)
- `terraform plan` previews changes without doing anything
- `terraform apply` actually creates the infrastructure
- `terraform destroy` deletes everything Terraform created

---

### The 4 Commands You Now Know

| Command | What it does |
|---------|-------------|
| `terraform init` | Sets up Terraform and downloads plugins |
| `terraform plan` | Shows a preview of what will happen |
| `terraform apply` | Creates or updates your infrastructure |
| `terraform destroy` | Deletes everything |

---

### Up Next → Lesson 3: Variables – Making Your Code Flexible and Reusable