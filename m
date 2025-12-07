Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33131B0F23
	for <keys@linux.kernel.org>; Sun,  7 Dec 2025 20:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765140215; cv=none; b=iLyo6Ux50kZuohbgTXzvu25VAtU2gUWJ/lIUkAe5r7jWauzO+DZKy2HDOA+tmqjx+cAQPtfim5Uq3OQv34uslgWLxmSwSvMqmsPFtMhlV4UFQ6DAgqa9yJzVtvWt0tGI+qI81UtusepTEMACH2MvH8w6gsJoTqZgWTu8oAM2HOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765140215; c=relaxed/simple;
	bh=sIsZsRzcw1lewEB7SjhEvJEoX1PhQzQ2mHtN+78FkIM=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=IktbLaHtFqYU0vtVy6uf90TYK81cMW3Peq7j13pXeESkNf7SQ7Vn1YJyLllAxtgiuF24ns8QEG8NuLqeEY0esomTc+d3IKHQsw6qpXb+6RQiTr7u23L3g6vcybx9DjvERJwEkoyjJa73wtMGozS7B823hJxFmK85nj9bPnY/R+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqAW/J48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqAW/J48"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9643C4CEFB
	for <keys@linux.kernel.org>; Sun,  7 Dec 2025 20:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765140214;
	bh=sIsZsRzcw1lewEB7SjhEvJEoX1PhQzQ2mHtN+78FkIM=;
	h=Date:From:To:Subject:From;
	b=gqAW/J48IepJ04t4DhDiEbO2gjhV+MF/ebV5KURQXeHoY/gROCxiqlHsVkb+FWqgX
	 7hjyTUcTSI+xHSi0mtK0LkDWG4tIDwMlpXIQREbQNVBERO0/2OGaSkqqBnJkQvOj0b
	 OMm8hKkfh1M/FqSJs5uG/TJRrQB5Ws7UmHbyQV8jA7UusZmdHBclLBnVdsD6gmiL9X
	 FculiETb7FhKRpObs+9NY7tdGbxhEpi6ITv1p3OIHjJtsdKeV+0C5VIM+au2Gu+of4
	 MBMIJc1uWpZfz6gv4OO6aOIqcFgDHhUfWFrMOsDPB6q/A7y6VjtRd9XpP6dCzvZn7Y
	 ZYVsKDV5zO6wQ==
Date: Sun, 7 Dec 2025 12:43:32 -0800
From: Namhyung Kim <namhyung@kernel.org>
To: keys@linux.kernel.org
Subject: Key for Namhyung Kim
Message-ID: <aTXm9PnFhTUt8wgp@google.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="XvvVKUbGHA+e8pjT"
Content-Disposition: inline


--XvvVKUbGHA+e8pjT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hello,

I'm sending my PGP key as Linus requested.



--XvvVKUbGHA+e8pjT
Content-Type: application/pgp-keys
Content-Disposition: attachment; filename="export.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=e3t/
-----END PGP PUBLIC KEY BLOCK-----

--XvvVKUbGHA+e8pjT--
