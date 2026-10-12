Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E783B41B8CE
	for <keys@linux.kernel.org>; Mon, 12 Oct 2026 06:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791786971; cv=none; b=Wr+tUiW5/NSgMftivQA7UAbdh9fQU+uQuF6ut/3oWEXIVHg4HqZylfEVGeuuXudpDYNdwdWe0EVql/xW/LYdkP1eoqJ1NVkaPBtzeLzSL9n3tTns9foxKwA1FZ4PLyoVi8ZkFMieqQ1tinx3wVcMKhLJmGQrQLbnwXINoYgRNvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791786971; c=relaxed/simple;
	bh=Qxlz76Pzh44xAYnpU8N7V72Io0wGZrED5es65BSyuD8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PGb4OoQhHrRh9AWWsIwQyOh9HQHhMPCIutjWN5af+I1Duk98e2u9xNT0niHH4UmUS6vRwd+x9qNTebaVGSIiSgJSPYv6jtWeU4wvKmIIAgMBaeZOTxB7Ok9oSwdqjRR1RrHL+/ItD8I5GSR/83GA9XnFWWSMJAMl+Mop9KTQlwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=FHKsQMXI; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="FHKsQMXI"
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-48c14a06c95so1110228f8f.1
        for <keys@linux.kernel.org>; Sun, 11 Oct 2026 23:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1791786967; x=1792391767; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Qxlz76Pzh44xAYnpU8N7V72Io0wGZrED5es65BSyuD8=;
        b=FHKsQMXIChMf7hHxGsOu3P8OuStMhPIM/5sAgUdvLTUjQIgwntSN70b7uhhwH7Nt4G
         qF0JiCpLpdBozeGi8Hd01S+zJliZHha9fzAq819M9Fz2Cpr/srjZjXWsBHyW4xV19IHP
         z2Rn4RKFpDqU35AeGJJZF348xYrDoA35f+LTU6zPR/2K15cMkgTxZcAgf8Rckq0P/qny
         PGKCWCUNCEr5hndCVDsU4wXHcmblSohtHgvCwU6ksTjiaQY/BDBbz6zqjmNu/66QSYfN
         TllVtXISTyENPNhwA9p+AER3LKDa8XW5PTdSZiZHvT6tW2vVvBPg+VuIKEZJVko0gWAL
         hSiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791786967; x=1792391767;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Qxlz76Pzh44xAYnpU8N7V72Io0wGZrED5es65BSyuD8=;
        b=rJlgRKilkg2rC/E8KCV113S6jHSMprxwqwzvfn9L6DLtcC9fuy2sS4FXL4ADK8Mgak
         y93ymhXTo0NkQmi17/NvdNtOrAVKExGc8hi7uuLUddRXJVhIFgNXxqKuCJfWIdlMiucp
         o8Betomdi8m1NAuUhEaMi8OQgrKLlZs7Lp0xFPOaimVQ0oAF7YwLKCVpE1bfRES7eeTK
         B+sXTnh2ouFbOb8iC6GxzAa7vzcbjYdIaiMuBBVSQw474cLEeClOmbYVP8UC4HsxYP6d
         HQygT9rCXcNgo1+Z/t1MpM4MuMdFORQHKXqPxt5QFSFmPWhj2W1TVc4Zr60iJYVBFeg9
         ZtTQ==
X-Gm-Message-State: AFq9FYLMZbiUU99oRXzha09b+hT3FFsxARxlzpu+3yg0UoIaJhUqqPpD
	NxxL/kpRNCWJErVr0Y2+tDO5q5KACiULeddpCUy17zxrc1PEeLuD0vYNSa9KyDOReesHX8s+x46
	4o7HS
X-Gm-Gg: AYBFou3rOwptJ7aPWmafEVRJiSmVLdU8hBvE8Z/TGhVp/KvaOeotDZ3wqHisILnUAPv
	Go5gK1fLukD7M2FkHphzMufOFp8X2Sdgs/nvNNjMXbcxaPEO0IQdTkFW/oadkRfHG+EccnwvTid
	ZhyTqH78PeRafnjGXJ15cDpLavvDaufs24PYjeiGUzvqlG6vXWGObkaWsnUZcD8b2w9XgGu9m2u
	o+wXWJjc7PXZStflYLNOolaN4hFhvCQh2mOf7fEPQW1Ar/8tPRPbifT7mvrqQ2i+52qTvkXnMCe
	ml7/hwZmOH9BA/88sWRqDm6+n7qVHPMf3XXvyQw0WyuqaV+cJJxD8GzDzR2m59qGG40HOx3EsCM
	N7eZwMp75QPpulAybPaUF90akD3nr8lmsHz3vv1QADdxbLZZu1PzZEJVCeJq17ZwWqIjdxIK/Pn
	OMy9gRJ8ec3AY+km3+TZX7OYZ5ZRhd2uRei2+lBcoX6Z42zsmMk0R3txGi5WTbIxdy71KX86if6
	zIlrQV44x4/8QER8/VHJmuXfQz0652NH7j46K99uGXwObat86teYLECxaYl9DXxDmr/BPi2
X-Received: by 2002:a05:6000:290b:b0:487:2805:6834 with SMTP id ffacd0b85a97d-48dbace156emr14536616f8f.42.1791786966772;
        Sun, 11 Oct 2026 23:36:06 -0700 (PDT)
Received: from localhost (p200300f65f19a904ade4f69ba751c34c.dip0.t-ipconnect.de. [2003:f6:5f19:a904:ade4:f69b:a751:c34c])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-48db9aac6a4sm17942838f8f.28.2026.10.11.23.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:36:05 -0700 (PDT)
Date: Mon, 12 Oct 2026 08:36:04 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key
Message-ID: <asx-3MIsOHm3wcsY@monoceros>
References: <20261010-quaint-prompt-barracuda-ddf9d5@quoll>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d6hdouw5w4jnrqxe"
Content-Disposition: inline
In-Reply-To: <20261010-quaint-prompt-barracuda-ddf9d5@quoll>


--d6hdouw5w4jnrqxe
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key
MIME-Version: 1.0

Hello,

On Sat, Oct 10, 2026 at 01:03:12PM +0200, Krzysztof Kozlowski wrote:
> One UID removed, new signature

exactly as promised. The new signatures don't have an effect on the
signature path to Krzysztof.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Best regards
Uwe

--d6hdouw5w4jnrqxe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrMf9EACgkQj4D7WH0S
/k58iAf+N/SJiJlw+6/C2yj+SbIg3cPDAIcc7SkK+Atda77RuaQotV8pJpbmnOQb
7MwsvmF07S7z07G2T5KZQXth+WKcQmakv28L/aeBRNNY56yBr9QPNQPypXDS5K0r
F5Vq7DvJlm1sInhY4DEiiiKRP/LHZbLl9Wirk1rf5AzCxJ/9nnwgVIZmKEovon80
glf3kesktXDWGU2GgvBaFVTjaJznTZcC0DJ2BQOZxqXV2q1TNmPuiVM3UNJqn5By
v95L05aU1OblDwfDvB8yxqdFW5Bvcn1AA4DZ19OP96WQCsjGYGiQs7U6geVo7EAX
UHBhGW9BBv+2elDMtIBDBMp8ma8erQ==
=lm8P
-----END PGP SIGNATURE-----

--d6hdouw5w4jnrqxe--
