Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC691DFE22
	for <keys@linux.kernel.org>; Tue,  3 Dec 2024 19:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733254463; cv=none; b=U74MJq0InzwSzoDBG+81w7CTNIEmvXRzQFbBrCLqTz0LoZFdLVKieA/ADIah4JQ7lo6jfFa4qRpYNox2reaTGyVZLLPQvuGXsxw850Xt7LwfoPNptUAdh4IEDYlT0abOL6Pd+Xuk2GrIEyN8KPjolcIEuS5+VJiZorW7eLxFfQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733254463; c=relaxed/simple;
	bh=9n3rHT5lZNDvFX9YkFliyv4oRXFZnwHzPvORjKEh62c=;
	h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version; b=BygCe7TeXWdUxfANfLTlOv+PesfwuvvUs00AgSisLwUz3SfnutsBlp1NUxdjKIdZvADavhes48Wb1voU24gGNh27bsT5B603zJRgpg9DE1yvIxLiq4Cn/+2XAvG9D1NgwQk7l1l16h0KaAcp33SVlowlymiLsqkSDqZQbNyTHTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EmW3pkw4; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EmW3pkw4"
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-382610c7116so3937551f8f.0
        for <keys@linux.kernel.org>; Tue, 03 Dec 2024 11:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733254460; x=1733859260; darn=linux.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9n3rHT5lZNDvFX9YkFliyv4oRXFZnwHzPvORjKEh62c=;
        b=EmW3pkw4K8ziiLCvOFwjBNDWtgLKSWLplyOK2vCowC6Kq96Rs+6q0b29XALFz0usp0
         /FvEmzXtZE5RmDqWmHwgzNm7gI12dFFO3uYB84GhA5IqVKqAfQKcC68qYOqluFYPEHab
         6ItLz1E9Z+x5yyNWN5o2zi9s4tWaI3CvGbZwHfpSB9TXGLWBZ9/R9K8jlFmLzu++wuwZ
         I3WACSiDpQUs7SsBNLJz75rTF/ZFgcoruOhdBuyO+XW9HzoeQOyScBRnp5PhWqCJzQv3
         0cRLzGEhsJxn8aSr3cI2ZHupem3O8TSMojLKedJQJvp5vr+Q9BaMf5vPEqFD2LedTtU5
         DNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733254460; x=1733859260;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9n3rHT5lZNDvFX9YkFliyv4oRXFZnwHzPvORjKEh62c=;
        b=IBKIEhvZ9Lbh336uemiTESmRysSk8wEOWAyRdCV6wmW4MGvVx61nCnpKuD/NWb06Eu
         /mPLzc9oj1W4hugKhy1xO+zSDTSdeAMdn6Bm5MTUdC6aoDk3NVb//Y8vz8gK/22Er5us
         /YaaVAU3ZbPdlW/D3P55v8gCFR9m9/nwTEhAMZJQREbdbFxodvon6i4H37/RRyaa1W6E
         efRwh5efYj3qq0y6IQhT8kZd8mdmJHdDWrP92sW43y9mKDq04N580FYjdF3MymC9PMHc
         gHosR4zN8amy/l372wpTmMkpXERXiChq+wOIABQ1+la3W1CZA9svoUZjpt40jLGmhjhG
         59sA==
X-Gm-Message-State: AOJu0YyJhpueRPFQmxolT5RBUMA+GF/RXUcB8g/QiSVCyIKdwUjSEOvI
	zxhoZUXGB+NKAYgh9Uj+qD1eRGwgbmyaaRx7JwethFoE8RIIR93eKKDJBg==
X-Gm-Gg: ASbGncvuzrTHiQZT5fB+g1ZsRaDNYJORzv6fVCqYkYsfq3oiPNgtq4UGARiYje/5mpE
	4Atg8ftQVf+oHTtxSBZ2GpRvIdJoW2ZIPjkcD4H7b0HISagE6tZl6uVsUkCan5xK580pRc/G2M6
	JoPyAvSNVI/3BGi5v6mP+Hm8qOfioJg7K5jOWSMfJWO1iAnPYqDGrVqUw/F857umy1o6kSMxeWg
	YaWfSFtHiknjUQflISyISX4MjxR1BKyQ0le9Y4Qw1OHnSiHR3PSdxPFfz4KdQY9QTVvJQ==
X-Google-Smtp-Source: AGHT+IHxDeZk4KckiNUc05K2Rx1Z+DHL7NbHebwZZ7ePNoY+uK67yeMyEFjgpkTjfKAglPGsQcArZA==
X-Received: by 2002:a05:6000:1f8b:b0:385:ed16:c91 with SMTP id ffacd0b85a97d-385fd3f2fbemr3270139f8f.24.1733254459631;
        Tue, 03 Dec 2024 11:34:19 -0800 (PST)
Received: from giga-mm-1.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ec6a3d8fsm8600848f8f.101.2024.12.03.11.34.19
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 11:34:19 -0800 (PST)
Message-ID: <542dc48b07ae0f7f2c0d815c21358540c7b593b1.camel@gmail.com>
Subject: New key Alexander Sverdlin
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: keys@linux.kernel.org
Date: Tue, 03 Dec 2024 20:34:10 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1 
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0

Hello!

Please find my signed key for inclusion into the kernel keyring.

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
Der/QVbWm4aw4Xr2BmUU
=3DzAcN
-----END PGP PUBLIC KEY BLOCK-----

--=20
Alexander Sverdlin.

