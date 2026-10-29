Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793244060;
	b=5ONa8U3oJdAy3VEgdX3M0hm/FvM6+wTCTYSrU3KM4fjuQu1h+l3e5eM3qBtlXq9g+A8U
	 ESklnYLoiCHQ7qGHSZ2+QBO4f+lxRSCoWxrIjoJUlnSXS7IbZ2SOxMFGyjZeHEw6EjgcC
	 0VD9CDhB3jMLK1E3i39ufI9tIZQkksl2fXkqFeRRES5BryJkZXfiyvAU25k9z1mJW2oLA
	 3+B+AIoccemnYn94bF7lp/TLVE+1n5hiakDKP3jOThfhQOgdZeYIhMsWuoWz5RVZ+Kk3y
	 0QJQY7jCGKehwYTvSUXbwc+iL4Q2ODBl3BGOFAUZqE/hzrnEwL3dAv2ZYx8bYxyVovQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793244060;
	h=Received:Delivered-To:Received:DKIM-Signature:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:In-Reply-To:References:MIME-Version:
	 Content-Transfer-Encoding;
	bh=HRvFOnuDz9EY0OmAdYW8Y7apM+glSSQoFq4rWLEGWgw=;
	b=LnibT2inpa9k3t+qkoKnmH/dYAo7TA2+LCNryNUG6iXxLyswDYlL5OP2l35HbO0PaADF
	 XUPfmSUMl2zX1swIAM8/u+pVubCoRVGPdY7/kmY+C+QbOu2jOwa5evdsdRGTSAZHwu+Ga
	 prd+3GAx14KtK+60r9Em0fyAL+kx+DJYDNNY+CaIrcxW5hl06EkPd1lXnT9k8dpZkr4lp
	 4JN/MGgG/UyWfJ43iShHdhPBTyZ3TdYj6o1mW56jqZOMWoehUOmLrU2i1WGqWU8xJT/tB
	 mhqwr1kRlKqfugI7Hc4iYmtRhcw5LBcTbjKDibFP+/rsdYzb/rZc2vIvpjk12JeXpug==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AixDyHTH;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201CC606A31A
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 03:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AixDyHTH
Received: by smtp.kernel.org (Postfix)
	id D11E41F01828; Thu, 29 Oct 2026 03:20:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B1FB1F01825;
	Thu, 29 Oct 2026 03:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793244059;
	bh=HRvFOnuDz9EY0OmAdYW8Y7apM+glSSQoFq4rWLEGWgw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=AixDyHTHJl5GmWyQ8EPt2aur9wx7ThTQBX/SzRHo+jyLAs+6qe4tUx5VWmDzE3XqN
	 oZSZsZsM2qOhGbj+F1rgNLCwLyAj6gkKrYWIA8szmSFEn1L6v7JhosRL2YbUtcIej2
	 PJs+PmFSrG8dIYBryhI/t0Bq06YaC3Iw1M60pX2cJd3mMFY+9hIHJ4LwVQJKg5rKLr
	 i03YwiHVtsMVw7/PBzGHvUBGZZrLnhWegMwfxi+VYr1UEMuTCvpZAMRSMVuHkXTOmt
	 x6n6KY0VDEAB0pm9wi0T4JFUwDGeLNh+mUqYvODOyyZiLaneqtAQS9M+jBRgtRcb6D
	 7vOcWVQhgnABA==
From: SJ Park <sj@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: SJ Park <sj@kernel.org>,
	keys@kernel.org
Subject: Re: Updated GPG key for sj (was: "Re: Your kernel.org PGP key has conflicting expiration dates")
Date: Wed, 28 Oct 2026 20:20:51 -0700
Message-ID: <20261029032052.174414-1-sj@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028-industrious-sage-piculet-0b2a35@lemur>
References: 
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Wed, 28 Oct 2026 22:45:54 -0400 Konstantin Ryabitsev <mricon@kernel.org> wrote:

> On Wed, Oct 28, 2026 at 04:57:46PM -0700, SJ Park wrote:
> > Attching the updated key below.  Note that I use "SJ Park" as my name for kernel
> > development now, so modified your above command to use that.
> > 
> > Please let me know if I did anything wrong.
> 
> Looks good, but... while I have you! Could you please run this script to
> strengthen all the signatures on the keys you've signed in the past?
> 
>     https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/scripts/resign-modern-hash.py
> 
> The instructions are in the header. That should help improve the web of trust
> in the keyring.

Thank you for sharing this!  I ran the script, and seems no action is needed
from my side.

'''
pgpkeys$ git checkout origin/master
[...]
HEAD is now at 10e606b8 Restore expired keys removed in 2025 to keys/expired/
$ ./scripts/resign-modern-hash.py
Certifier: B84722821233BD43B8D0922B8BC68E994040912F
Keys dir:  /home/lkhack/pgpkeys/keys

Building analysis keyring... 649 keys.
Cross-checking local keyring... 1 matching key.

  [ OK ] 7967F76ABB41FC44  SHA512     Namhyung Kim <namhyung@kernel.org>
  [ OK ] FF18FCC1C43759F3  SHA256     Minchan Kim <minchan@kernel.org>
  [ OK ] 7E271B2ACD1D430D  SHA512     Puranjay Mohan <puranjay@kernel.org>
  [ OK ] 5A0312EB0C1DEAE3  SHA512     Harry Yoo <harry@kernel.org>

All your certifications in pgpkeys.git and your local keyring use modern hash algorithms.

This only covers your signatures on other people's keys. To check
your own key's self-signatures, run:
  scripts/rebind-modern-hash.py --fpr B84722821233BD43B8D0922B8BC68E994040912F
pgpkeys$ ./scripts/resign-modern-hash.py --signer B84722821233BD43B8D0922B8BC68E994040912F
Certifier: B84722821233BD43B8D0922B8BC68E994040912F
Keys dir:  /home/lkhack/pgpkeys/keys

Building analysis keyring... 649 keys.
Cross-checking local keyring... 1 matching key.

  [ OK ] 7967F76ABB41FC44  SHA512     Namhyung Kim <namhyung@kernel.org>
  [ OK ] FF18FCC1C43759F3  SHA256     Minchan Kim <minchan@kernel.org>
  [ OK ] 7E271B2ACD1D430D  SHA512     Puranjay Mohan <puranjay@kernel.org>
  [ OK ] 5A0312EB0C1DEAE3  SHA512     Harry Yoo <harry@kernel.org>

All your certifications in pgpkeys.git and your local keyring use modern hash algorithms.

This only covers your signatures on other people's keys. To check
your own key's self-signatures, run:
  scripts/rebind-modern-hash.py --fpr B84722821233BD43B8D0922B8BC68E994040912F
pgpkeys$ ./scripts/resign-modern-hash.py --verify
Certifier: B84722821233BD43B8D0922B8BC68E994040912F
Keys dir:  /home/lkhack/pgpkeys/keys

Building analysis keyring... 649 keys.
Cross-checking local keyring... 1 matching key.

  [ OK ] 7967F76ABB41FC44  SHA512     Namhyung Kim <namhyung@kernel.org>
  [ OK ] FF18FCC1C43759F3  SHA256     Minchan Kim <minchan@kernel.org>
  [ OK ] 7E271B2ACD1D430D  SHA512     Puranjay Mohan <puranjay@kernel.org>
  [ OK ] 5A0312EB0C1DEAE3  SHA512     Harry Yoo <harry@kernel.org>

All your certifications in pgpkeys.git and your local keyring use modern hash algorithms.

This only covers your signatures on other people's keys. To check
your own key's self-signatures, run:
  scripts/rebind-modern-hash.py --fpr B84722821233BD43B8D0922B8BC68E994040912F
'''

Please let me know if I missed something.


Thanks,
SJ

[...]
