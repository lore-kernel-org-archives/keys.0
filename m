Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8777618C00
	for <keys@linux.kernel.org>; Sun, 15 Jun 2025 21:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750024801; cv=none; b=WK0l24eg1WgStDDiFb0NEKgIF5FUZZ7MQGf7lrXFGNyo/p/aB9bEKNmpETp+7PuJOXZu9sD1L4XZoRNB1YD6+I7BKVVzdfYv3wQA5+zrZAad6CYWJ9kW2Y++Lth0kixgJUh5QxcgaGHgFCHlpcRblqLYcrSjSpiWAzGKIAjc8Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750024801; c=relaxed/simple;
	bh=xrvvmn2iaOQ4NbEXp0/uhdM0aruYomEQpNCWpldRdMY=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=oLrZfr6Tk5zn7aJhHGRc7Fs5QmEiDXgZmLHosgWQ2vwTvSlM6ZTFyfWy74Z4DqumJUC1AKdDHdrF/vTPB1qcAUYFJZM3cEXvD6qyXGAtF7LYAu4N6oWordhqM+KDY3N37o1kBhLqvm+GdnKteRib5w6ZaExwCIHpSoAVYccF89Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=MNrrO0s+; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="MNrrO0s+"
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-742c3d06de3so4620853b3a.0
        for <keys@linux.kernel.org>; Sun, 15 Jun 2025 14:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1750024797; x=1750629597; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XZ+AavFjJAYZlwjGSh6pqKDG1MWA8NO8acCsjD852rI=;
        b=MNrrO0s+iGJEIiNtEZipuvvZ7qHYquvOpg9HLACMy/fgBAiO6tpSIAHNZCbfyBy7DC
         XCD1G2A+/5rWUwlgXbg2cBJGX0x/xqOBnc6P7wbZi+Hn+REEhGfKyWfck6IISmdvhPBF
         6oFqxkFWr6bgxl17sb9TT50fC86T6KFAIgBopwneWe+ZHyPCvL8EJFFBor9Mw1nMVN6W
         jUwTTPaQP6/ldnFhuquyzNUF6DpqglBavY4XxtEHwtA0bBHmpwRzYlDiLMfgfgAEoxNj
         5h54nV8IsedhByW6rExstbmhUdJ+p2Z/DvO5d0EMZQ4fs0G3dIp/G8SWcPSFsyDZ5ib1
         nv8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750024797; x=1750629597;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XZ+AavFjJAYZlwjGSh6pqKDG1MWA8NO8acCsjD852rI=;
        b=pohK2wv6Qd8lsWW5Nyl6NRXgVjgkPy82whhguu6jMbPN82aVmKFb+RgrVken3GNmF4
         Aj8nVAH5F/1J2dhK2LCjlDwBAAzI4947Fh5Ub8nlHz55BAXBqS8TmoMdXNdJWap+M1Vo
         5lBzhi+tZpol3rjqW+GqlmUpy4vF9wVGZbohYJ1d6KMVXcI0++99xKOiiPnwdq7W9Hg2
         8nG7/DRa24jF1Xx7iJPmAdQQqKl8vPLxPyS54vkx9HnzNR8smXt12xJBucJ8vCgp4s3e
         SLlcF03ULl1hUheVtUY8u6vy8y1AJ7wqn1dNdTF7wvMo6L64+k6pVgthg5Z40Coqtm1C
         bqyQ==
X-Gm-Message-State: AOJu0Yzn/LPTgpWSOekMDdVq2WowmmeYFug2FYcc2zkgDINT6Ptopyy5
	/DeMJTJhZZSHZD1KIQxzpfh0D4P5GvKKl820Siu7CTxxBdGt4fnZOcEjAWIjvKURmXFFaax21Lo
	MAHSsaqU=
X-Gm-Gg: ASbGncsCWmqtxjaxilCuJECIaUFXewmDFgc94Y3XXfd7KLHhVQ9sogWiHIomKqfUw4E
	hvEJ2/QQPxK89shEnvDGeYoEviXrDJaBWySwB/XhQiIJ+YcESQXAuxrYSBOCvBS/Ad2glMEYvQ0
	i9ScwlEUTOJI71KZ5a65RhwCVaCr93lPVM2oUk1YZuHUiXGd75IYgD5MrttZVFinbyoANBlQkLr
	sMv5xozsU7rDZKm1r2ViIAwllmihL78hQ2suzFL5T433tNuZxeP9NlWzEUhyA78SK/Une+Hsb6a
	XgIExcZmrOTZZob7QziGKMh7tye7GJ1T8vcMAeFWAgj8D3/M7efhuTVbKCIC7OHHbOsBB1FtYQ=
	=
X-Google-Smtp-Source: AGHT+IFkz91ssHwT9AwhBz7f7bFBRHecp6fSofDqmNioLc6M30x0ASg3Ne7N/SS3aCXa+oPEKoFFCQ==
X-Received: by 2002:a05:6a00:1acd:b0:746:199d:525f with SMTP id d2e1a72fcca58-7489cfdadf9mr8909402b3a.7.1750024797508;
        Sun, 15 Jun 2025 14:59:57 -0700 (PDT)
Received: from x1 (97-120-245-201.ptld.qwest.net. [97.120.245.201])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d0d90sm5323808b3a.155.2025.06.15.14.59.56
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jun 2025 14:59:57 -0700 (PDT)
Date: Sun, 15 Jun 2025 14:59:55 -0700
From: Drew Fustini <drew@pdp7.com>
To: keys@linux.kernel.org
Subject: Updated key for Drew Fustini
Message-ID: <aE9CW1hJZ08QkUav@x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="DuWaEX0uZatkfCUb"
Content-Disposition: inline


--DuWaEX0uZatkfCUb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi, I have attached my GPG key: 1B6F948213EA489734F3997035D5CD577C1E6010

I now have two kernel maintainers: Dan Williams and Palmer Dabbelt.

pub   rsa4096 2024-07-25 [C] [expires: 2026-07-25]
      1B6F948213EA489734F3997035D5CD577C1E6010
uid           [ultimate] Drew Fustini <drew@pdp7.com>
sig 3        35D5CD577C1E6010 2024-07-25  Drew Fustini <drew@pdp7.com>
sig          1ED2916A667D8802 2025-05-30  Dan Williams (djbw) <dan.j.williams@intel.com>
sig          3373170601861969 2025-06-01  Michael Halstead <mhalstead@linuxfoundation.org>
sig          EF4CA1502CCBAB41 2025-06-15  Palmer Dabbelt <palmer@dabbelt.com>
sub   cv25519 2024-07-25 [E]
sig          35D5CD577C1E6010 2024-07-25  Drew Fustini <drew@pdp7.com>
sub   ed25519 2024-07-25 [S]
sig          35D5CD577C1E6010 2024-07-25  Drew Fustini <drew@pdp7.com>
sub   ed25519 2024-07-25 [A]
sig          35D5CD577C1E6010 2024-07-25  Drew Fustini <drew@pdp7.com>


Thanks,
Drew

--DuWaEX0uZatkfCUb
Content-Type: application/pgp-keys
Content-Disposition: attachment; filename="drew_pdp7_com_gpg.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=kL8q
-----END PGP PUBLIC KEY BLOCK-----

--DuWaEX0uZatkfCUb--
