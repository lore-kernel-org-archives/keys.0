Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.222.169
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793362156;
	b=xNALzT6uDHNaC4+ybkUWFBMxtATpI5b1l+weT1xAnWfMp+ChqvbC8dpUgzVo2x8dvbu0
	 5/ZE06kQwyVky7/bvj2sj6a1xO2Rl3ew7cKc4GQsbikXlPC1W+WycraWgPwYk8/s3Yv8x
	 4B2SXYOPgEbuWOybcPcauUg0h/b9+NgXTX0vJLAl9oU8gR1wa+SCOHYAAaSCBzmICjyJc
	 r1OdzJHW45sHRU3zI3EhwLk7MGvaViq+opkLQQ2ZAaNdNMNStMOCuVSqFQm7Bq+uOtNuf
	 9Qn9HvlvkmWSAGXw6dPqK4cG3mn+d6ajr9TaepoM6HPPJvoN3gnU7MfZWMH1FZ2iRow==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793362156;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:References:
	 In-Reply-To:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding;
	bh=Saxdh/mStWALww68ao01BtqgSUfn3YOFlz1JPFIfzlo=;
	b=LM+yBCEuC2HH6ioNkcTv/jXGGpJd16mF9wseqhxL1dlWCwLgKWK/SDVrReuD2TzoqW66
	 2bhOyxvGtz+v3B1p0QIwvpTEWC6PEABshjAXbzwDqEA/anhNsgtmf6bb3hE3rJGjQ7EEr
	 /yI/9DBKeVoi1kQG2quTbWQ9+XsDNx7gYe99BlKlXPuCOEs+xrVv2hRLX13xWVWIc4aME
	 L7mbnPuW7Qb/tJwpoqnWYMito2TPg1USIaFJMmUbdtGGEE2nZSeKVgwo0h/zIHxzwY6Ar
	 tAa4ljOkOjnnrTuUlVEjFTho0WpDT1n9Qtklfxgluwgm3BsMlDLbVHUm03IzUOcaSOQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=quaBicG4;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.222.169
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1E1606A31C
	for <keys@linux.kernel.org>; Fri, 30 Oct 2026 12:09:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3E1E1606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=quaBicG4
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-93e503815adso54697285a.1
        for <keys@linux.kernel.org>; Fri, 30 Oct 2026 05:09:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793362155; cv=none;
        d=google.com; s=arc-20260327;
        b=ThFE7DPTfzjMr+tIMThamSYNHCVRb8kVrTTFCF8mxtusewV3TZYW7d3+lC33uyxdWa
         r/NNI8JUgaK/Z1+Ska92t012WYQ0+0IQcJKIY3UpO/1rCHFi/rkM/C9Z6cIIt5a/uevm
         M26PFkq8+fCc74V8XjFjzmT1R5gyzys70cBr4SCCeHxxPUrx82Yv16jDnufMEMldY/jl
         LSi9+T0eStGPvTZiNyLFLZoJwvzqGgnGE7WDmofs1QmLhMQg3VYKeybhPjLXaHoTJ9JZ
         22C3PGORPj8jUPYeSVqo1hdEy1bdA/oAw4QAJgnNovWKYkaj+E4FAC2yqo/+XOAOiRYx
         WdRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Saxdh/mStWALww68ao01BtqgSUfn3YOFlz1JPFIfzlo=;
        fh=OOJj1McAMApbcvUfv67YQqPTUJyGV4llB5XppZXqlHM=;
        b=gAveTDllv97vh9qki1YRLZF9DkTRiIQrQ1UHmzz63PSH/cRHR8hvhpke7giWGcIQUZ
         vI58RIBy7NLxsEimrr6ctbuKuMV1VGi/YxJK9mGDp7odUq6PbDe5uMUxBWloaMQQRv/T
         WGk5JgkSvQSrtXa+790ZC9YbuazI7+JLMulvGNWblPZEdr6gieRMjq6753qikkMkkv//
         87zrw1OHLD3b4s0bl6i62OIAIJgR4J5M7NbOY9foyQsFAqscz1JhLwl2WjeHQiXU/ySG
         i5f3wQcf+DX3nKK1+bdCDWAIOBeqwcJ4wt91Indn27LY9pNqYCtXSRe79SUIgqGAuMIV
         z1SQ==;
        darn=linux.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793362155; x=1793966955; darn=linux.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Saxdh/mStWALww68ao01BtqgSUfn3YOFlz1JPFIfzlo=;
        b=quaBicG465L8OxrYa/uv641zlnSds2i9VFRKPmos0+65v/vkKxgYhvh3F1OF97tzCU
         sTY1tA7FptZOe7VU0zZ6msLB8r3SzfIXhmeQPS7pPy0szrw6Ilj3AxY62Ub5kC61bXUU
         1Oc5XgZu5KiDS197P6KHQZyRx0IKKoWv6FJgsO3X+cDC6UOSPsOWmHbH1EbELZzO1Uyh
         3H6ZUaEwCcrv9VQ2GiZ4uQ4x/aU+kNvrO/LzavlYBTaQRP+FIQuk7nfJ7S1Lg9aL45yT
         hciBOP2l6tZ9XT8LaulmBYk0MV8A0O/szerW1Ta32TQQARMD3vxTmo9dan8FGdetK4nX
         CzHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793362155; x=1793966955;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Saxdh/mStWALww68ao01BtqgSUfn3YOFlz1JPFIfzlo=;
        b=wPUQ8AuYMHtYfBihsGSqTPxHjBH8xdiySTrj20GJWp14c84qarxoflxFzsuy28qQWa
         WJ47d/maLu84rAdiirxe/7M4KxGA64NEbVRd3T2v+9SyyNa3PcifurG01sDUsisDe3zn
         kd9hyY5gGyGUCMJURv6oNCvLXarxR4gpdn/L344J907uuU+zaRGGks2rmUMARhs07jnk
         /LLge+jjZMR8TIJfAc/rhFnlLTQMpOMQ9D8DzptyYJVcyAyNt3iE1A4smWIJ7UAKFDRM
         6yz0KhokVV9TWOUgzGsLD6BwJ/PbOsULM4NRpyG7AaeNZ3VsEqpHNuWr5LdUCEEMJHfN
         IBdA==
X-Gm-Message-State: AFq9FYLSwwV973iGhwzM97iJjpMxQlIR/d2q//0M7GPeCCut6MiwC9qQ
	SJ2DEFsAi4kmvG2AulKW3lOqOMdqxH8UHjn8lXxnsQicuSl1qDYO87qh2QFGDKaFHg9drMe8H3s
	rd/aEuc6zxrs+EBxZ9lqssZax6ZN4z7o=
X-Gm-Gg: AYBFou0HfTapyCFXojmbTGEci9EO70XjRsDzV26LAQ/lj0SR5gH03JyNAaJ590xuup5
	YXjI29F2rHk69HdhnaqW+XffVk6obCx0SvxwmZpYiaaXPL4dR8wxVGZnIjHM8GhVwQCyOSar4+e
	oHM8wmekA4dIVxVUcElZuz7IapXPW7BoGNSeuZW3n94tiFWv1U4hMJGjz1zHv0rQbY+UAJ/cVAb
	BLRWpd+FNLwz52VCyfAnqyTBA5AdUCnTPTsp75YF/yENzsG+0+r2RAAn+IgEirqtOaNaa/drGJ+
	IfF8y36GuAcfqQR8/TMa3d4pZCLXYmAEjqT/rDk2WBZYVuAW4fBlmOLtZdpMNp6M/NCp52ebRSO
	DpgR+fnqMA5bkXsNqcWGfhv/y0lWClP7OrEfkO+OacahJxu28zEAk4upRdJ33BvxqBCt3FauTJT
	ySF1txPHa1EdXXmsYHr4TMX8dOjYaKqf/ZLMawrG2W33NC58AJCCOoh0IZlltdwTg4WMUNw3xP0
	Y5Mh0aTXyw+tnXf5KmWwdov
X-Received: by 2002:a05:620a:258f:b0:939:6dfa:48fd with SMTP id
 af79cd13be357-944217a105amr317960485a.51.1793362155050; Fri, 30 Oct 2026
 05:09:15 -0700 (PDT)
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
References: <CAMAsx6fF0nS6E4YG3LwcDpecymph9n_QTU0L9M7KWrztEqEgqw@mail.gmail.com>
 <auRmkYkwHuQNY8BZ@monoceros>
In-Reply-To: <auRmkYkwHuQNY8BZ@monoceros>
From: Daniel Pereira <danielmaraboo@gmail.com>
Date: Fri, 30 Oct 2026 09:09:04 -0300
X-Gm-Features: AclHuK8CAhrHpvw-oWG0G5_FZpk6DyJO2CsDbhp-JXrMhnewxrTRJ5AUDOEBbdc
Message-ID: <CAMAsx6fB7CxM3ok1Aq+S6jo4tfqZg0EaWaVFm4fgzEBap2=7pw@mail.gmail.com>
Subject: Re: PGP key submission: Daniel Pereira da Silva (pt_BR documentation)
To: u.kleine-koenig@baylibre.com
Cc: keys@linux.kernel.org, corbet@lwn.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 30, 2026 06:49 AM, Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@baylibre.com> wrote:
>
> The UID of this certificate is:
>
>         Daniel Pereira da Silva (Linux Kernel Maintainer pt-br) <danielma=
raboo@gmail.com>
>
> . I recommend reading
> https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-ha=
rmful.html
> and then maybe consider adding a UID without a comment as "Linux Kernel
> Maintainer pt-br" isn't something that really identifies you in the long
> term.
>

Hi Uwe,

I am resending this message because it did not reach
keys@linux.kernel.org, due to a problem with my email provider.

Unfortunately I cannot change or remove the old UID, because the
signatures from Jonathan Corbet and William Breathitt Gray are on it,
and a signature covers the exact UID text. Those signatures are not
easy to get again, so I prefer to keep the old UID.

Thanks,
Daniel
