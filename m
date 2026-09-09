Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09843939BD
	for <keys@linux.kernel.org>; Wed,  9 Sep 2026 18:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788978016; cv=none; b=ZW28kjCySh39ttNWqyMDFG6ZJejjSvs3LMrYT3Sgba5BENwIVqXh5gXdqo3leR9D9KSqrNwd4HIhBrE/j/XtswHJx1NTzGCc/tZbqqCXhflYIow6DsX3K2Oo8ILEL9yM2AuqwxRqX1yI/Wt2un4+RGWQpru/UQWQyuXYaLrBKjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788978016; c=relaxed/simple;
	bh=c+facsLpLxaZbLLA/hZsms2LSbp0UKdd+qtjJ/H2DOs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cixy9scBS78s3ipGQMmVwKixoAQfkx1LCD6ZwKNDM/Jz8y/BcguxHmDyIYqcuSHKVFxhm11etoYcalKptmgS5c2mR/k+eZ9Gx5bGCSLqzt1kA4MJLV+TBu852h6FriTRtjr8msulD6yvEolnU+w1ktwtBJkgKCdmN0m297EoDAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7DucAo/; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7DucAo/"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83F511F000FF
	for <keys@linux.kernel.org>; Wed,  9 Sep 2026 18:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788978015;
	bh=c+facsLpLxaZbLLA/hZsms2LSbp0UKdd+qtjJ/H2DOs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=c7DucAo/VmJWRn/LKyC1ftJhIWwc1Gz6fnFJmYMMTwg2NSpfWsv8G1/OJ5j58uQ8e
	 1D6g8UzdbUA62u0QevuST431xHC7tLfY5bznl/Uw0MqtijvZP4ohGf1tIj/mrf9KIi
	 brNhqPS08WJoE4f+5XkMddWUwFWa5BQeLeWUBesPKmBQXV0OazbccF3fmsLgEfwZfq
	 NtPD7ublvgK3JOfQYnz/0A/mami6iPJPtCxjNcZYn9tVB7N6BTaFk4a8VFEsHf5BUG
	 oEkQnvECdw5p8Z5Xd5GfgW6a/s9spgkdLn8v5TPyIYjufXEyeKRc+AYjiQBLM50RsG
	 Lr4uyNtNu9dpA==
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2d58efc7356so79770435ad.1
        for <keys@linux.kernel.org>; Wed, 09 Sep 2026 11:20:15 -0700 (PDT)
X-Gm-Message-State: AFuF++l04qlUZVcKsm4xYC4Gz6fDccEAsQ/qkqBM+Q7QD+aX4zU5QzMF
	LlW5T/UIQA+J/bstpZbxE+1pR974kp3uG3lB4JOgTnNgJv1LeFBWENU78sPSCcUjSyAyu/0fVE+
	DiG3shIGpFau8lebQ+fzZI4H3BnQWLT4=
X-Received: by 2002:a17:90b:3809:b0:381:a766:efc9 with SMTP id
 98e67ed59e1d1-39b261014e2mr51584364a91.7.1788978015249; Wed, 09 Sep 2026
 11:20:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
References: <CAKtyLkFmH8eAXH5Rv16jj7TJbYYwu4toOweV9r37mcpwVognoQ@mail.gmail.com>
In-Reply-To: <CAKtyLkFmH8eAXH5Rv16jj7TJbYYwu4toOweV9r37mcpwVognoQ@mail.gmail.com>
From: Fan Wu <wufan@kernel.org>
Date: Wed, 9 Sep 2026 11:20:03 -0700
X-Gmail-Original-Message-ID: <CAKtyLkHzZmxddmUJvko5nZwAocnHpq5w1_MiRy-K_5o1qjwv+Q@mail.gmail.com>
X-Gm-Features: AcwNN1Vhx284Yogkh1GzkDvhLGB_LmV0Z9KbZipBUiVpTBIiNMby4vrvfsjcSIs
Message-ID: <CAKtyLkHzZmxddmUJvko5nZwAocnHpq5w1_MiRy-K_5o1qjwv+Q@mail.gmail.com>
Subject: Re: wufan@kernel.org
To: Fan Wu <wufan@kernel.org>
Cc: keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 26, 2026 at 12:57=E2=80=AFAM Fan Wu <wufan@kernel.org> wrote:
>
> Hi,
>
> I have extended the expiration date of my gpg key to 2029-08-25. The
> wufan@kernel.org uid was not refreshed during my May update and was
> still carrying the old expiry. The attached is my updated public key.
>
> -Fan
>

Hi,

Just following up on this request. The self-signature for my
wufan@kernel.org UID expires today, and I may need to sign some upstream
work in the near future, so I would appreciate it if someone could take
a look when possible.

I also noticed that the PGP repository has not been updated for more
than ten days, so I wanted to check whether this request may have been
missed.

The updated public key extends the expiration date to 2029-08-25.

Thanks,
Fan
